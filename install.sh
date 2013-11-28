#!/bin/bash

set -eu

echo "source $HOME/.greenshell/greenrc.sh" >> $HOME/.bashrc
echo "source $HOME/.greenshell/aliases.sh" >> $HOME/.bashrc

mv $HOME/.gitconfig $HOME/.gitconfig.old
ln -s $HOME/.greenshell/.gitconfig $HOME/.gitconfig
ln -s $HOME/.greenshell/.gitignore-global $HOME/.gitignore-global

cd $HOME || exit 1
mv .vim .vim.old
mv .vimrc .vimrc.old
mv .gdbinit .gdbinit.old
ln -s $HOME/.greenshell/.vim $HOME/.vim
ln -s $HOME/.greenshell/.vimrc $HOME/.vimrc
ln -s $HOME/.greenshell/.gdbinit $HOME/.gdbinit

mv $HOME/.config/Terminal/terminalrc $HOME/.config/Terminal/terminalrc.old
ln -s $HOME/.greenshell/terminalrc $HOME/.config/Terminal/terminalrc

mv $HOME/.valgrindrc $HOME/.valgrindrc.old
ln -s $HOME/.greenshell/.valgrindrc $HOME/.valgrindrc

echo "done"
