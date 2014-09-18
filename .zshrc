# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
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
alias emacs='emacs -nw'
alias pms='gksu pm-suspend'

export EDITOR=/usr/bin/vim

autoload -U promptinit
autoload -U colors && colors

zstyle ":completion:*:commands" rehash 1


export PATH=$PATH:/opt/android-sdk/platform-tools


PROMPT="%~ %{$fg[blue]%}>%{$fg[white]%}>%{$fg[blue]%}>%{$fg[white]%} "

source /etc/profile.d/autojump.zsh

export TERMINAL=xfce4-terminal
