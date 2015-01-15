# Path to your oh-my-zsh configuration.
ZSH=$HOME/dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="funky"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#
# Aliases
alias l="ls -alh"
alias ll="ls -alh"
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage"'

alias e='emacsclient --tty\
                     --create-frame'

alias killemacs="emacsclient -e \"(progn (setq kill-emacs-hook 'nil) (kill-emacs))\""

# PATH
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

export COFFEELINT_CONFIG=$HOME/dotfiles/coffeelint_config.json

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Elixir
export PATH="$HOME/vendor/elixir/bin:$PATH"
export PATH="$HOME/vendor/elixir/bin:$PATH"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin

# Node
export NODE_PATH=/usr/lib/nodejs:/usr/lib/node_modules:/usr/share/javascript:/home/chpill/lib/node_modules
source $HOME/dotfiles/dev/nvm/nvm.sh
