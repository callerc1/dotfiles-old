
# Path to your oh-my-zsh configuration.
export ZSH=$VENDOR/oh-my-zsh

# move the custom folder outside of the oh-my-zsh repo
export ZSH_CUSTOM=$VENDOR/oh-my-zsh-custom

# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k customization
# Force USER to "caller(c1)" for when default user.
if [[ "$ZSH_THEME" == "powerlevel9k/powerlevel9k" ]]; then
  DEFAULT_USER='caller(c1)'
  if [[ "$USER" != "$DEFAULT_USER" ]]; then
      USER='caller(c1)'
  fi
  DEFAULT_USER=$USER
  POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='255'
  POWERLEVEL9K_ALWAYS_SHOW_USER=true
fi

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  $plugins
  atom
  bower
  brew
  bundler
  colorize
  composer
  docker
  docker-compose
  git-flow
  git
  gulp
  node
  npm
  nvm
  osx
  rbenv
  ruby
  sublime
  zsh_reload
)

# disable oh-my-zsh updates entirely, only check when running `dot`
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
