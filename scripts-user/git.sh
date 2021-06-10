#!/bin/bash

echo ""
echo "-------------------------------------------------------"
echo "Setup des git clients"
echo "-------------------------------------------------------"

NAME=`git config --global user.name`
if [ ! $? -eq 0 ]; then
    echo -n "Ihr vollständiger Name : "
    read NAME
    git config --global user.name "$NAME"
fi

EMAIL=`git config --global user.email`
if [ ! $? -eq 0 ]; then
    echo -n "Ihre E-Mail-Adresse    : "
    read EMAIL
    git config --global user.email "$EMAIL"
fi

git config --global pull.rebase false
