#!/bin/sh
#
# Installs -
# mas-cli
#
###############################################################################

# Include the general functions
. ./functions/general

# Check for Homebrew
if ! command_exists brew; then

  print_error "Nooooooo! Homebrew isn't installed! Can't install mas-cli"

else

  print_block "Installing mas-cli"
  brew install mas

fi
