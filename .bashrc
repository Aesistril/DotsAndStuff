#!/bin/bash

# If not running interactively, don't do anything
# [[ $- != *i* ]] && return
# [ -z "$PS1" ] && return

# alias ls='ls --color=auto'
export PATH=$PATH:~/Scripts/:~/.local/bin
eval "$(starship init bash)"

alias ls="ls --color"
alias sudo="sudo "
alias pp="powerpill"

export MAKEFLAGS="-j8"

alias clswap="sudo swapoff -a && sudo swapon -a"

eval "$(thefuck --alias)"
