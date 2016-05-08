# check for RVM
if [[ -a ~/.rvm ]]
then
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
  export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
  source ~/.profile
fi