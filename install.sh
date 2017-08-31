#!/bin/sh

# Copy .tmux.conf
cp tool/tmux/.tmux.conf ~/

# Install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

source ~/.tmux.conf

# Copy .vimrc
cp tool/vim/.vimrc ~/

# Copy vim
cp -r tool/vim ~/.vim
rm ~/.vim/.vimrc

source ~/.vimrc

# ubuntu .bashrc
cp ubuntu/.bashrc ~/
