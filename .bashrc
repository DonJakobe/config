#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:~/.scripts

alias cdd='cd ~/Downloads'
alias cdf='cd ~/files'
alias cdp='cd ~/files/pictures'

alias ls='ls --color=auto'
alias cd..='cd ..'
alias l='ls -lah'
alias v='vim'
alias c='cat'
alias r='ranger'
alias um='udiskie-umount'
alias ebash='shopt -s extglob'
alias R='R --no-save'

function m() {
    if [[ $1 == *"pdf" ]]; then
        mupdf "$1" &
    elif [[ $1 == *"." ]]; then
        mupdf "$1pdf" &
    else
        mupdf "$1.pdf" &
    fi
}

function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}

PS1='[\[\e[00;31m\]\u\[\e[00;32m\]@\[\e[00;34m\]\h\[\e[00;00m\]] \W\$ '

#source /usr/local/gromacs/bin/GMXRC

setxkbmap de
