
# Path to your oh-my-zsh configuration.
export ZSH=$VENDOR/oh-my-zsh

# move the custom folder outside of the oh-my-zsh repo
export ZSH_CUSTOM=$VENDOR/oh-my-zsh-custom

# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k customization
# Force context to "caller(c1)" for when default user matches current user.
if [[ "$ZSH_THEME" == "powerlevel9k/powerlevel9k" ]]; then
  DEFAULT_USER='callerc1'
  if [[ "$USER" == "$DEFAULT_USER" ]]; then
      POWERLEVEL9K_CONTEXT_TEMPLATE='caller(c1)'
  fi
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context ssh dir rbenv vcs)
  POWERLEVEL9K_SSH_BACKGROUND='red'
  POWERLEVEL9K_SSH_FOREGROUND='255'
  POWERLEVEL9K_MODE='awesome-patched'
  POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='255'
  POWERLEVEL9K_HOME_ICON=''
  POWERLEVEL9K_HOME_SUB_ICON=''
  POWERLEVEL9K_FOLDER_ICON=''
  POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
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
