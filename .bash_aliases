#====== Aliases =======
## System
alias edit="micro"
#alias edit="nano"
alias addalias="edit ~/.bash_aliases"
alias addbashrc="edit ~/.bashrc"
alias addconfig="edit ~/.config/i3/config"
alias addcompton="edit ~/.config/compton.conf"
alias addstatus="edit ~/.i3status.conf"
alias addmicro="edit ~/.config/micro/colorschemes/mycolor.micro"
alias comptonrun="compton &"
alias comptonstop="killall compton"
alias open="xdg-open"
alias shut="sudo shutdown now"
alias copy="xclip -selection clipboard"
alias shot="import screenshot.png"
alias upd="sudo dnf up"

## Navigation
alias cls="clear"
alias dir="ls -al"

## Programming
alias py="python"
alias dockerdesktop="systemctl --user start docker-desktop"

## Guide
alias shb="echo '#!usr/bin/bash'"
alias guidevenv="echo 'virtualenv --python=/usr/bin/python3.11 venv'"
alias guidenetstat="echo 'sudo netstat -nlp | grep PORT'"
