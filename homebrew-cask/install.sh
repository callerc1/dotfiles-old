#!/bin/sh
#
# Homebrew Cask
# This installs native applications using homebrew cask.
#
###############################################################################

# Include the general functions
. $DOTFILES/functions/general

# Check for Homebrew
if ! command_exists brew; then

  # No Homebrew, no Caskroom :(
  print_error "Nooooooo! Homebrew isn't installed! Can't install Caskroom."

else

  # Let the user know what's happening
  print_block "Installing Homebrew Cask"

  # Install homebrew cask
  # brew tap caskroom/cask
  # Following a change in caskroom from december (https://github.com/caskroom/homebrew-cask#important-december-2015-update-homebrew-cask-will-now-be-kept-up-to-date-together-with-homebrew-see-15381-for-details-if-you-havent-yet-run-brew-uninstall---force-brew-cask-brew-update-to-switch-to-the-new-system) caskroom/cask should no longer be tapped.

  # Install the versions cask so we can install beta versions of apps
  brew tap caskroom/versions

  # Install the apps
  sh $DOTFILES/homebrew-cask/update.sh -s

fi
