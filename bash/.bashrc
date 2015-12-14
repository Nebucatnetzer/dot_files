# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# environment variables
export EDITOR=vim
export MAKEFLAGS='-j4'
export USE_CCACHE=1
export PATH=~/bin:$PATH
export TERM=xterm
set -o vi

#various aliases
alias ls='ls --color=auto -1'
alias todo='~/02_documents/tasks/todo.sh -c -d ~/02_documents/tasks/todo.cfg'
alias tv='terminal_velocity'
alias notes='ranger /home/andreas/02_documents/notes'
alias i3config='vim .i3/config'
alias installed_packages='pacman -Qqe'
alias aur_packages='pacman -Qqm'

# aliases for  ssh connections

## schweizer server
alias swiss_server='ssh nebucatnetzer@185.16.173.105'
alias capricorn='ssh andreas@5.172.131.120'
alias elinor='ssh andreas@192.168.1.2'

## Netherland Servers
alias testserver='ssh -p 2222 nebucatnetzer@185.13.224.208'
alias server='ssh -p 2222 nebucatnetzer@159.253.3.136'
alias backup_server='scp nebucatnetzer@159.253.3.136:/home/nebucatnetzer/*.tar.gz /home/andreas/01_inbox/'

PS1='[\u@\h \W]\$ '

# function Extract for common file formats

function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f "$1" ] ; then
        NAME=${1%.*}
        #mkdir $NAME && cd $NAME
        case "$1" in
          *.tar.bz2)   tar xvjf ./"$1"    ;;
          *.tar.gz)    tar xvzf ./"$1"    ;;
          *.tar.xz)    tar xvJf ./"$1"    ;;
          *.lzma)      unlzma ./"$1"      ;;
          *.bz2)       bunzip2 ./"$1"     ;;
          *.rar)       unrar x -ad ./"$1" ;;
          *.gz)        gunzip ./"$1"      ;;
          *.tar)       tar xvf ./"$1"     ;;
          *.tbz2)      tar xvjf ./"$1"    ;;
          *.tgz)       tar xvzf ./"$1"    ;;
          *.zip)       unzip ./"$1"       ;;
          *.Z)         uncompress ./"$1"  ;;
          *.7z)        7z x ./"$1"        ;;
          *.xz)        unxz ./"$1"        ;;
          *.exe)       cabextract ./"$1"  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "'$1' - file does not exist"
    fi
fi
}
