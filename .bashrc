# If not running interactively, don't do anything
[ -z "$PS1" ] && return

################################################################################
### History

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# set history time format to "YYYYMMDD - HH:MM:SS [command]"
export HISTTIMEFORMAT="[ %y/%m/%d - %H:%M:%S ]  "

# Ignore certain commands in history
export HISTIGNORE="ls:cd ..:pwd:hostname"

################################################################################
### Appearance

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# change prompt to " > "
export PS1=" > "

################################################################################
### Handy

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#source /home/engshare/admin/scripts/master.bashrc
