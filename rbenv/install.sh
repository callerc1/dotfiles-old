#!/bin/sh
#
# Installs -
# rbenv
#
###############################################################################

# Include the general functions
. ./functions/general

# Check for Homebrew
if ! command_exists brew; then

  print_error "Nooooooo! Homebrew isn't installed! Can't install Node, NVM or Yarn"

else

  print_block "Installing rbenv"
  brew install rbenv

fi
