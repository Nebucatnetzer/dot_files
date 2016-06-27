#/bin/bash

#sudo apt-get install stow

# bash config
stow -t /home/andreas bash

# vim config
stow -t /home/andreas vim

# tmux configs
#stow -t /home/andreas tmux
#mkdir ~/git_repos
#mkdir ~/.tmux/
#git clone https://github.com/tmux-plugins/tpm ~/git_repos/tpm
#ln -s ~/git_repos/tpm ~/.tmux/
