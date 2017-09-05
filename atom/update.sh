# Include the general functions
. ./functions/general

print_block "Updating atom"

if command_exists apm; then
  print_line "Updating bare packages list : \n"
  apm list --installed --bare
  apm list --installed --bare > ${DOTFILES}/atom/.packages
fi
