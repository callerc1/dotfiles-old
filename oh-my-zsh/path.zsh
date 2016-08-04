
# Path to your oh-my-zsh configuration.
export ZSH=$VENDOR/oh-my-zsh

# move the custom folder outside of the oh-my-zsh repo
export ZSH_CUSTOM=$VENDOR/oh-my-zsh-custom

# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Powerlevel9k customization
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='255'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(atom bower brew brew-cask bundler colorize composer git-flow git gulp node npm nvm osx rbenv ruby sublime zsh_reload)

# disable oh-my-zsh updates entirely, only check when running `dot`
DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true
