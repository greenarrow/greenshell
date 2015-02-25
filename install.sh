#!/bin/bash

set -eu

install()
{
	cd -- "${HOME}"

	if [ -h "$1" ]
	then
		REF=$(readlink -- "$1")

		if [ "${REF}" == "$1" ]
		then
			return
		fi

	else
		if [ -e "$1" ]
		then
			DIR=$(dirname -- "$1")
			${PREFIX} mkdir -p -- "${BASE}/backup/${DIR}"
			${PREFIX} mv -- "$1" "$BASE/backup/$1"
		fi
	fi

	${PREFIX} ln -fs -- "${BASE}/$1" "$1"
}

BASE=".greenshell"
PREFIX=""

install ".gitconfig"
install ".gitignore-global"
install ".vim"
install ".vimrc"
install ".gdbinit"
install ".valgrindrc"
install ".config/Terminal/terminalrc"
install ".pylintrc"

echo "ensure this line is present at the end of a suitable rc script:"
echo
echo "source $HOME/.greenshell/greenrc.sh"
