#!/bin/sh
#
# Installs -
# gradle
#
###############################################################################

# Include the general functions
. ./functions/general

# Check for Homebrew
if ! command_exists brew; then

  print_error "Nooooooo! Homebrew isn't installed! Can't install Gradle"

else

  print_block "Installing Gradle"
  brew install gradle

fi
