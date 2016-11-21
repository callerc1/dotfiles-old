#!/bin/sh
#
# Installs -
# Go
#
#
###############################################################################

# Include the general functions
. ./functions/general

# Check for Homebrew
if ! command_exists brew; then

  print_error "Nooooooo! Homebrew isn't installed! Can't install Go."

else

  print_block "Installing Go"
  # Install with homebrew
  brew install go

fi
