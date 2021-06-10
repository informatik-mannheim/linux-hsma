#!/bin/sh
echo ""
echo "-------------------------------------------------------"
echo "Setting up enhanced bash prompt"
echo "-------------------------------------------------------"

if [ ! -d "$HOME/.bash-git-prompt" ]; then
  git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
  cp files/.my_profile ~/
  echo '. ~/.my_profile' >> ~/.bashrc
fi
