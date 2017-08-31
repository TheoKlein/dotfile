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

# ubuntu .bashrc
cp ubuntu/.bashrc ~/
