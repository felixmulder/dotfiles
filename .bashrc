# ~/.bashrc
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias pacman='sudo pacman-color'

mycd() {
  cd $1 && ls --color=auto
}

alias cd=mycd
alias cl=clear
alias ls='ls --color'

export EDITOR=/usr/bin/vim

PS1='\w \[\033[0;34m\]>\[\033[1;37m\]>\[\033[0;34m\]>\[\033[1;33m\] '
