#!/bin/sh
#
# git clone https://github.com/mbadolato/iTerm2-Color-Schemes
# iTerm2-Color-Schemes
# Over 150 terminal color schemes/themes for iTerm/iTerm2 (with ports to Terminal, Konsole, PuTTY, Xresources, XRDB, and Terminator) http://www.iterm2colorschemes.com
#
# Check for iTerm2-Color-Schemes

if [ ! -d "$DOTFILES/iterm/themes/iTerm2-Color-Schemes" ]; then
  echo "\nGetting iTerm themes for you..."
  cd $DOTFILES/iterm/themes
  git clone https://github.com/mbadolato/iTerm2-Color-Schemes
else
  echo "\niTerm2 Color Schemes are already installed! Run dotfiles update to get the latest!";
fi


exit 0