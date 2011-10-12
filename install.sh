#!/bin/bash

echo "source $HOME/.greenshell/greenrc.sh" >> $HOME/.bashrc
ln -s $HOME/.greenshell/.gitconfig $HOME/.gitconfig
ln -s $HOME/.greenshell/.gitignore-global $HOME/.gitignore-global

# Install gedit colour scheme
ln -s $HOME/.greenshell/green_cobalt.xml $HOME/.local/share/gtksourceview-2.0/styles/green_cobalt.xml

echo "done"
