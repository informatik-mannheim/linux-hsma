#!/bin/sh

# This script configures a EndeavourOS installation
# and adapts it to the needs of computer science students at
# our factuly. To keep things simple, everything is done with
# pure bash scripts and without any fancy system management
# tool like Chef or Puppet.
#
# It installs several packages via pacman and yay. The list
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
# TODO: Handle the case that there is not a single pacman or yay to
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
# pacman packages
#################

# Install Arch Linux packages via pacman
JOINED_PACKAGES=`find $LST_LOCATION/ -name "pacman-*.lst" | xargs cat`
PACMAN_LIST=`echo "${JOINED_PACKAGES}" | sed -E "s/[ ]*#.*$//g" | grep -v "^$" | sort | tr '\n' ' '`

pacman -S $PACMAN_LIST

#################
# yay packages
#################

# Get list of flatpack packges and install them
JOINED_YAY=`find $LST_LOCATION/ -name "yay-*.lst" | xargs cat`
YAY_LIST=`echo "${JOINED_YAY}" | sed -E "s/[ ]*#.*$//g" | grep -v "^$" | sort | tr '\n' ' '`

for PACKAGE in $YAY_LIST; do
   sudo -u $SUDO_USER yay --sudoloop --noconfirm $PACKAGE
done


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
