#!/bin/sh
#
# Installs -
# Node.js & NPM
# NVM
# Yarn
#
###############################################################################

# Include the general functions
. ./functions/general

# Check for Homebrew
if ! command_exists brew; then

  print_error "Nooooooo! Homebrew isn't installed! Can't install Node, NVM or Yarn"

else

  print_block "Installing Node.js"
  # Install with homebrew
  brew install node

  print_block "Installing NVM"
  # Install nvm
  brew install nvm

  print_block "Installing Yarn"
  # Install yarn
  brew install yarn

  # Run updates
  sh $DOTFILES/node/update.sh -s

fi

# And we're done
print_block_end
