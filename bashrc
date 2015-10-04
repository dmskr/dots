#!/bin/bash

# Environment
export EDITOR="vim"

# Config
export PS1="\[\e[0;37m\]\w\[\e[m\]:"
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# This loads NVM
[[ -s /Users/dmskr/.nvm/nvm.sh ]] && . /Users/dmskr/.nvm/nvm.sh

ulimit -n 10240
ulimit -u 1064

