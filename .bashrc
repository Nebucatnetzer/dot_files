#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
EDITOR=nano
MAKEFLAGS='-j4'
alias ls='ls --color=auto'
alias server='ssh nebucatnetzer@185.16.173.105'
alias testserver='ssh root@89.31.135.46'
alias buildserver='ssh nebucatnetzer@213.239.207.237'
alias elinor='ssh andreas@5.172.131.120'
PS1='[\u@\h \W]\$ '
