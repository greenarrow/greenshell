#!/bin/bash

echo "source $HOME/.greenshell/greenrc.sh" >> $HOME/.bashrc
echo "source $HOME/.greenshell/aliases.sh" >> $HOME/.bashrc

mv $HOME/.gitconfig $HOME/.gitconfig.old
ln -s $HOME/.greenshell/.gitconfig $HOME/.gitconfig
ln -s $HOME/.greenshell/.gitignore-global $HOME/.gitignore-global

cd $HOME || exit 1
mv .vim .vim.old
mv .vimrc .vimrc.old
ln -s .greenshell/.vim .
ln -s .greenshell/.vimrc .

# Install gedit colour scheme
mkdir -p $HOME/.local/share/gtksourceview-2.0/styles
ln -s $HOME/.greenshell/gedit/green_cobalt.xml $HOME/.local/share/gtksourceview-2.0/styles/green_cobalt.xml

echo "done"
