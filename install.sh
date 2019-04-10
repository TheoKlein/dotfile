#!/bin/sh
sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt update && sudo apt install fish vim tmux -y

# Copy .tmux.conf
cp tools/tmux/.tmux.conf ~/

# Copy .vimrc
cp tools/vim/.vimrc ~/

# Copy vim
cp -r tools/vim ~/.vim
rm ~/.vim/.vimrc

# Install vim vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Copy fish functions
mkdir -p ~/.config
mkdir -p ~/.config/fish
cp -rf tools/fish/functions ~/.config/fish/functions
