#/bin/bash

stow -t /home/andreas bash
stow -t /home/andreas vim
stow -t /home/andreas tmux
mkdir ~/git_repos
mkdir ~/.tmux/
git clone https://github.com/tmux-plugins/tpm ~/git_repos/tpm
ln -s ~/git_repos/tpm ~/.tmux/
