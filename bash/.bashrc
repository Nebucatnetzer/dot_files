# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# environment variables
export EDITOR=vim
export BROWSER="firefox"
export MAKEFLAGS='-j4'
export USE_CCACHE=1
export PATH=~/bin:$PATH
export TERM=xterm
set -o vi

#various aliases
alias ls='ls --color=auto -1'
alias i3config='vim .i3/config'
alias installed_packages='pacman -Qqe'
alias aur_packages='pacman -Qqm'

# aliases for  ssh connections

## schweizer server
alias finoglio='ssh -p 2222 andreas@192.168.1.10'
alias apache-main='ssh andreas@192.168.1.100'
alias owncloud-server='ssh -p 2222 andreas@192.168.1.101'
alias ttrss='ssh andreas@192.168.1.102'
alias wiki='ssh andreas@192.168.1.103'
alias cms='ssh andreas@192.168.1.104'
alias webmail='ssh andreas@192.168.1.105'
alias tagspaces-server='ssh andreas@192.168.1.106'
alias forum='ssh andreas@192.168.1.107'
alias test-server='ssh andreas@192.168.1.150'
alias openvpn_server='ssh -p 2222 andreas@192.168.1.13'
alias server='ssh nebucatnetzer@159.253.3.136'
alias backup_server='rsync -azP -e "ssh -p 2222" andreas@owncloud.2li.ch:/home/nebucatnetzer/*.tar.gz /home/andreas/01_inbox/'

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
