#!/bin/sh

# TODO(samt): Automatically setup the ~/dropbox directory.
# TODO(samt): Automatically setup the ~/gdrive directory.
# TODO(samt): Automatically install macports.
# TODO(samt): Automatically install LaTeX.
# TODO(samt): Automatically install InsomniaX.
# TODO(samt): Automatically install 2Up.

echo step 1: config directory
CONFIG_DIR=~/dropbox/config
ln -s ${CONFIG_DIR} ~/config

echo step 2: home directory structure
for dir in Desktop Documents Downloads Library Movies Music Pictures Public; do
    lowercase_dir=`echo ${dir} | tr '[:upper:]' '[:lower:]'`
    mv ~/${dir} ~/${lowercase_dir}
done

echo step 3: home directory symlinks
ln -s ~/dropbox/private ~/private
ln -s ~/gdrive/google ~/private/google

echo step 4: bash
ln -s ~/config/dotfiles/.bash_profile ~/.bash_profile

echo step 5: vim
ln -s ~/config/dotfiles/.vimrc ~/.vimrc
ln -s ~/config/dotfiles/.vim ~/.vim

echo step 6: git
port install git-core
ln -s ~/config/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/config/dotfiles/.gitignore ~/.gitignore

echo step 7: tmux
port install tmux
ln -s ~/config/dotfiles/.tmux.conf ~/.tmux.conf

echo step 8: gnuplot
port install gnuplot
# TODO(samt): .gnuplotrc

echo step 9: sqlite3
ln -s ~/config/dotfiles/.sqliterc ~/.sqliterc

echo step 10: wget
port install wget
