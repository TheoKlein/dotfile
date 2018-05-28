#!/bin/sh

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
mkdir ~/.config
mkdir ~/.config/fish
cp -r tools/fish/functions ~/.config/fish/functions

# ubuntu .bashrc
cp ubuntu/.bashrc ~/
