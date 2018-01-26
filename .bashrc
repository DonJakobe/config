#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias cd..='cd ..'
alias l='ls -la'
alias v='vim'
alias um='udiskie-umount'
alias disp='xrandr --auto --output eDP1 --right-of HDMI2'
alias nodisp='xrandr --output HDMI2 --off'
alias beam='xrandr --auto --output eDP1 --same-as HDMI2 '
alias m='mupdf' 

alias enzo='ssh -t enzo "cd /data/jstaab/ ; bash"'

function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}

#PS1='[\u@\h \W]\$ '
#PS1='\e[00;31m\u\[\033[00;32m\]@\[\033[00;34m\]\h: \e[31m\W\e[0m\]$ '
#PS1='\[\033[00;31m\]\u\[\e[00;32m\]@\[\033[00;34m\]\H\W\e[0m\]$ '
PS1='[\[\e[00;31m\]\u\[\e[00;32m\]@\[\e[00;34m\]\h\[\e[00;00m\]] \W\$ '


source /usr/local/gromacs/bin/GMXRC

setxkbmap de
