#!/bin/sh

# Copy .tmux.conf
cp tools/tmux/.tmux.conf ~/

# Install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

source ~/.tmux.conf

# Copy .vimrc
cp tools/vim/.vimrc ~/

# Copy vim
cp -r tools/vim ~/.vim
rm ~/.vim/.vimrc

source ~/.vimrc

# ubuntu .bashrc
cp ubuntu/.bashrc ~/
