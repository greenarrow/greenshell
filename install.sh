#!/bin/bash

echo "source $HOME/.greenshell/aliases.sh" >> $HOME/.bashrc
ln -s $HOME/.greenshell/.gitconfig $HOME/.gitconfig
ln -s $HOME/.greenshell/.gitignore-global $HOME/.gitignore-global

echo "done"
