echo "\033[0;34mCreating symbolic links"
# Creating all the symbolic links necessary
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc

ln -s $HOME/dotfiles/vimfiles/vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/vimfiles $HOME/.vim

ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig

ln -s $HOME/dotfiles/emacs.d $HOME/.emacs.d
