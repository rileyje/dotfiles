# .bashrc

# Source global definitions
if [[ $OS != "Darwin" ]]; then
	if [ -f /etc/bashrc ]; then
		. /etc/bashrc
	fi
fi

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias scala='rlwrap scala -Xnojline'
alias yum='echo "Use dnf!"'

function title() { echo -e "\\033k$1\\033\\setting title to $1"; }

# Uncomment the following line if you don't like systemctl's auto-paging
# feature:
# export SYSTEMD_PAGER=

if [[ $TERM == "screen" ]]; then
	export TERM="xterm-color"
fi

case $- in
	*i*)
		# interactive shell stuff
		# Turn off software flow control and remap C-s
		stty -ixon
		bind -x '"\C-s":echo "whoops!"'
		;;
	*)
		;;
esac

[[ -f ~/.bashrc-local ]] && . ~/.bashrc-local

unset PROMPT_COMMAND
