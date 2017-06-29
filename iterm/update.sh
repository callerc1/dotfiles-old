#!/bin/sh
#
# Update iTerm2-Color-Schemes
#
###############################################################################
set -e

# Include the general functions
. $DOTFILES/functions/general

print_block "Updating iTerm Themes";

cd "$DOTFILES/iterm/themes" && git up