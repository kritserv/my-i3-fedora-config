# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

#====== Aliases =======
## System
alias edit="nano"
alias addalias="edit .bashrc"
alias shut="sudo shutdown now"
alias copy="xclip -selection clipboard"

## Navigation
alias cls="clear"
alias dir="ls -al"
alias open="xdg-open"

## Programming
alias py="python"
alias dockerdesktop="systemctl --user start docker-desktop"

## Guide
alias shb="echo '#!usr/bin/bash'"
alias guidevenv="echo 'virtualenv --python=/usr/bin/python3.11 venv'"
alias guidenetstat="echo 'sudo netstat -nlp | grep PORT'"

