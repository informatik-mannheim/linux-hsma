#!/bin/bash

# Install build plugin into rbenv
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Install ruby
rbenv install 3.2.2
