#!/bin/sh

echo "\033[0;34mCreating the home bin directory"
mkdir -p $HOME/bin

DOT_PATH= $HOME/dotfiles

cd DOT_PATH

echo "\033[0;34mInstalling vim..."
git submodule update --init --recursive -- vimfiles
ln -s $(pwd)/vimfiles/vimrc $HOME/.vimrc
ln -s $(pwd)/vimfiles $HOME/.vim
# building vimproc
cd $(pwd)/vimfiles/bundle/vimproc
make
cd -


echo "\033[0;34mInstalling oh-my-zsh..."
git submodule update --init -- oh-my-zsh
ln -s $(pwd)/zshrc $HOME/.zshrc


echo "\033[0;34mInstalling emacs..."
git submodule update --init -- emacs.d
ln -s $(pwd)/emacs.d $HOME/.emacs.d


echo "\033[0;34mInstalling xcpape and keyboard init script"
git submodule update --init -- tools/xcape
cd $(pwd)/tools/xcape
make
ln -s $(pwd)/xcape $HOME/bin
cd -
ln -s $(pwd)/tools/kbinit $HOME/bin


echo "\033[0;34mInstalling nvm"
git submodule update --init -- dev/nvm


echo "\033[0;34mInstalling rbenv"
git submodule update --init -- dev/rbenv dev/ruby-build
ln -s $(pwd)/dev/ruby-build $(pwd)/dev/rbenv/plugins


echo "\033[0;34mCreating symbolic links for git config..."
ln -s $(pwd)/gitconfig $HOME/.gitconfig
