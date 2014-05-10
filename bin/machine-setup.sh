#!/bin/sh

# TODO(samt): Automatically setup the ~/dropbox directory.
# TODO(samt): Automatically setup the ~/gdrive directory.
# TODO(samt): Automatically install macports.
# TODO(samt): Automatically install LaTeX.
# TODO(samt): Automatically install InsomniaX.
# TODO(samt): Automatically install 2Up.

function install_package() {
    package=${1}
    port install ${package}
}

function create_symlink() {
    src=${1}
    destination=${2}
    if [ ! -h ${destination} ]; then
        ln -s ${src} ${dest}
    fi
}

echo step 1: config directory
CONFIG_DIR=~/dropbox/config
create_symlink ${CONFIG_DIR} ~/config

echo step 2: home directory structure
for dir in Desktop Documents Downloads Library Movies Music Pictures Public; do
    lowercase_dir=`echo ${dir} | tr '[:upper:]' '[:lower:]'`
    if [ -d ~/${dir} ]; then
        mv ~/${dir} ~/${lowercase_dir}
    fi
done

echo step 3: home directory symlinks
create_symlink ~/dropbox/private ~/private
create_symlink ~/gdrive/google ~/private/google

echo step 4: bash
create_symlink ~/config/dotfiles/.bash_profile ~/.bash_profile

echo step 5: vim
create_symlink ~/config/dotfiles/.vimrc ~/.vimrc
create_symlink ~/config/dotfiles/.vim ~/.vim

echo step 6: git
install_package git-core
create_symlink ~/config/dotfiles/.gitconfig ~/.gitconfig
create_symlink ~/config/dotfiles/.gitignore ~/.gitignore

echo step 7: tmux
install_package tmux
create_symlink ~/config/dotfiles/.tmux.conf ~/.tmux.conf

echo step 8: gnuplot
install_package gnuplot
# TODO(samt): .gnuplotrc

echo step 9: sqlite3
create_symlink ~/config/dotfiles/.sqliterc ~/.sqliterc

echo step 10: wget
install_package wget
