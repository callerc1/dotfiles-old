#!/bin/sh
#
# Installs -
# Jenv
#
#
###############################################################################

# Include the general functions
. ./functions/general

# Check for Homebrew
if ! command_exists brew; then

  print_error "Nooooooo! Homebrew isn't installed! Can't install Jenv."

else

  print_block "Installing Jenv"
  # Install with homebrew
  brew install jenv

fi

