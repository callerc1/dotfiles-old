#!/bin/sh
#
# Installs -
# Node.js & NPM
# NVM
#
###############################################################################

# Include the general functions
. ./functions/general

# Check for Homebrew
if ! command_exists brew; then

  print_error "Nooooooo! Homebrew isn't installed! Can't install Node and NVM."

else

  print_block "Installing Node.js"
  # Install with homebrew
  brew install node

  print_block "Installing NVM"
  # Install nvm
  brew install nvm

fi
