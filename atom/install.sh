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

  # Create packages file from packages.cson
  # packages.cson is source of truth as atom updates this when we add/remove packages
  # This is just a hacky way to install all atom packages via dotfiles install
  file=`cat ${DOTFILES}/atom/atom.symlink/packages.cson`
  packagesFile=${DOTFILES}/atom/.packages

  rm -f $packagesFile && touch $packagesFile
  for line in $file; do
    # check line starts with "
    if [[ $line = \"* ]] ; then
      # remove "" from package name and apend to packages file
      packageName=$(sed -e 's/^"//' -e 's/"$//' <<<"$line")
      echo $packageName >> $packagesFile
    fi
  done
  #echo `cat $packagesFile`;

  # Install the packages
  apm install --packages-file $packagesFile

  # potentially it might be better to just add the package-sync package to atom here via apm and then run the sync command within atom?
  # https://github.com/lee-dohm/package-sync

fi
