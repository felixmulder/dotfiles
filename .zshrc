# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' list-colors ''
zstyle ':completion:*' original true
zstyle :compinstall filename '/home/fixel/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias cl='clear'
alias ls='ls --color'
alias ll='ls -lh'
alias play='play2'
#alias gcc='gcc -Wall -pedantic -std=c99'
alias pacman='sudo pacman'
alias ncmpcpp='ncmpcpp && mpc pause > /dev/null'

export EDITOR=/usr/bin/vim

autoload -U promptinit
autoload -U colors && colors

zstyle ":completion:*:commands" rehash 1

PROMPT="%~ %{$fg[blue]%}>%{$fg[white]%}>%{$fg[blue]%}>%{$fg[white]%} "
