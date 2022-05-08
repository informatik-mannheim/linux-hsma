#!/bin/bash

if [ ! -d "$HOME/.rvm" ]; then
    echo ""
    echo "-------------------------------------------------------"
    echo "Installation des Ruby-Version-Managers (rvm)"
    echo "-------------------------------------------------------"

    # Install the Ruby Version Manager for easy selection of Ruby versions
    curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
    curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import -

    gpg2 --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    \curl -sSL https://get.rvm.io | bash -s stable --ruby

    source $HOME/.rvm/scripts/rvm

    rvm install ruby-3.0
    rvm docs generate-ri

    echo ""
    echo "-------------------------------------------------------"
    echo "Installation von wichtigen Ruby gems"
    echo "-------------------------------------------------------"

    GEM_LIST=`cat lst/gem.lst | sed -E "s/[ ]*#.*$//g" | grep -v "^$" | sort | tr '\n' ' '`
    gem install $GEM_LIST
fi
