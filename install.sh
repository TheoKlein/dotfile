#!/bin/sh

# Copy .tmux.conf
cp tools/tmux/.tmux.conf ~/

# Install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Copy .vimrc
cp tools/vim/.vimrc ~/

# Copy vim
cp -r tools/vim ~/.vim
rm ~/.vim/.vimrc

# Install vim vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Copy fish functions
cp -r tools/fish/functions ~/.config/fish/functions

# ubuntu .bashrc
cp ubuntu/.bashrc ~/
