alias sl='ls'
alias l='ls'
alias c='clear'
alias th='history | tail'

alias dg='git diff'
alias gd='git diff'
alias gss='git status'
alias tit='git'
alias gg='gitg'
alias git-strap='git init && git add . && git commit -a -m "Initial Commit"'

alias ge='gedit'
alias gv='gvim'
alias gvr='gvim --remote'

alias pie='PYTHONSTARTUP=$HOME/.greenshell/pie.py python'

alias ppwd='export PYTHONPATH=$PWD:$PYTHONPATH;echo $PYTHONPATH'
alias pp='export PYTHONPATH=$1:$PYTHONPATH;echo $PYTHONPATH'

alias gh='cd $HOME'
alias psa='ps -Alf'
alias pd='pushd .'
alias hs='history | grep '
alias pss='ps -Alf|head -n 1 && ps -Alf|grep '
alias lsnc='ls --color=never'
alias vr='vim -R'
alias ll='ls -l'
alias deltemp='find . -iname "*~"|xargs rm'
alias delpyc='find . -iname "*.pyc"|xargs rm'
alias time='/usr/bin/time -v '

alias xp='exaile --play-pause'
alias xn='exaile --next'
alias xb='exaile --prev'
alias xc='exaile --stop-after-current'
alias xq='exaile --query'

