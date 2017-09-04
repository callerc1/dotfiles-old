#!/bin/sh
#
# Installs -
# Atom Packages
#
#
###############################################################################

# Include the general functions
. ./functions/general

# Check for Homebrew
if ! command_exists apm; then

  print_error "Nooooooo! Atom Package Manager isn't installed! Can't install Atom Packages."
  print_line "Retry after installing Atom with `brew cask install atom`"

else

  print_block "Installing Atom Packages"
  # Install with homebrew
  apm install --packages-file ${DOTFILES}/atom/packages.list

fi
