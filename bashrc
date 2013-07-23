#!/bin/bash

# Environment
export EDITOR="vim"
export PATH=$PATH:$HOME/.rvm/bin:/Users/dmskr/Downloads/phantomjs-1.8.1-macosx:$HOME/projects/android/tools:$HOME/projects/android/platform-tools

# Config
export PS1="\[\e[0;37m\]\w\[\e[m\]:"
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

