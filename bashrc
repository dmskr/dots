#!/bin/bash

# Init RBenv
eval "$(rbenv init -)"

# Environment
export EDITOR="vim"

# Path
export PATH=$PATH:$HOME/projects/android/tools:$HOME/projects/android/platform-tools
export PATH=$PATH:/usr/local/sbin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Config
export PS1="\[\e[0;37m\]\w\[\e[m\]:"
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# This loads NVM
[[ -s /Users/dmskr/.nvm/nvm.sh ]] && . /Users/dmskr/.nvm/nvm.sh

