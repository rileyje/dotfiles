# .bash_profile
export OS=$(uname -s)

umask 0022

export BASH_ENV=~/.bashrc
export EDITOR=/usr/bin/vim
export GIT_SSH=$HOME/bin/git-ssh
export LC_COLLATE=C
export LESS=iXr
export PATH=$HOME/.local/bin:$HOME/bin:/sbin:/usr/sbin:${PATH}
export PS1="[\u@\h \W]$ "
export PYTHONSTARTUP=$HOME/.pythonrc
export GOPATH=$HOME/gowork
export GOROOT=$HOME/gowork/go

if [[ $OS == "Darwin" ]]; then
	export LANG=C
	export PROMPT_COMMAND='printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/~}"'
	export PS1='[\u@\h \W]$ '
	export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/scala/current/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin
fi

# try to set DISPLAY from SSH_CLIENT
if ! [ -z "$SSH_CLIENT" ]; then
	export DISPLAY=`echo $SSH_CLIENT |cut -d' ' -f1`:0.0
fi

unset PROMPT_COMMAND
unset command_not_found_handle 

# Get the aliases and functions
if [ -f $BASH_ENV ]; then
	. $BASH_ENV
fi

export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
