#!/bin/bash

# Install build plugin into rbenv
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Install ruby
rbenv install 3.2.2

# Activate version
rbenv global 3.2.2

# Add rbenv to bash and fish
echo "eval \"\$(rbenv init - bash)\"" >> ~/.bash_profile
echo "status --is-interactive; and rbenv init - fish | source" >> ~/.config/fish/config.fish
