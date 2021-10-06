#!/bin/sh

# This script configures a standard Ubuntu 21.04 installation
# and adapts it to the needs of computer science students at
# our factuly. To keep things simple, everything is done with
# pure bash scripts and without any fancy system management
# tool like Chef or Puppet.
#
# It installs several packages, flatpaks and snaps. The list
# of installed software is configured by the files in the
# lst/ directory. You can modify or delete the files to
# exclude packages or add your own.
#
# After installing the packages, it runs the scripts in
#
# * scripts-root/ as root
# * scripts-user/ as the current user
#
# You can run the script multiple times; it should deal with
# the steps already performed.
#
#
# TODO: Handle the case that there is not a single snap or flatpak to
#       be installed, e.g. because all the .lst files were deleted
#
if [ "$(id -u)" -ne 0 ]; then
  echo 'Dieses Skript muss mit sudo aufgerufen werden!' >&2
  exit 1
fi

echo "-------------------------------------------------------"
echo "Installation gestartet"
echo "-------------------------------------------------------"

# Location of the bill of materials
LST_LOCATION="lst"

#################
# addtional ppas
#################

if [ -f "ppa.sh" ]; then
  bash "ppa.sh" || true
fi

#################
# deb packages
#################

# Install Ubuntu packages via apt
JOINED_PACKAGES=`find $LST_LOCATION/ -name "apt-*.lst" | xargs cat`
APT_LIST=`echo "${JOINED_PACKAGES}" | sed -E "s/[ ]*#.*$//g" | grep -v "^$" | sort | tr '\n' ' '`

apt update
apt install -y $APT_LIST

# Remove some packages
APT_LIST=`cat $LST_LOCATION/remove.lst | sed -E "s/[ ]*#.*$//g" | grep -v "^$" | sort | tr '\n' ' '`
apt remove -y $APT_LIST
apt autoremove -y

#################
# flatpaks
#################

# Install flatpaks
apt install -y flatpak

# Regisiter Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Get list of flatpack packges and install them
JOINED_FLATPAKS=`find $LST_LOCATION/ -name "flatpak-*.lst" | xargs cat`
FLATPAK_LIST=`echo "${JOINED_FLATPAKS}" | sed -E "s/[ ]*#.*$//g" | grep -v "^$" | sort | tr '\n' ' '`
flatpak install flathub -y $FLATPAK_LIST

#################
# snaps
#################

# Install snaps
apt install -y snapd
JOINED_SNAPS=`find $LST_LOCATION/ -name "snap-*.lst" | xargs cat`
echo "${JOINED_SNAPS}" | sed -E "s/[ ]*#.*$//g" | grep -v "^$" | sort > /tmp/snap.lst

while read p; do
  snap install $p
done </tmp/snap.lst

#################
# additional scripts
#################

# Execute scripts
for script in scripts-root/*.sh; do
  bash "$script" || true
done

for script in scripts-user/*.sh; do
  sudo -u $SUDO_USER bash "$script" || true
done

echo "-------------------------------------------------------"
echo "Installation beendet"
echo "-------------------------------------------------------"
