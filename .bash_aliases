#====== Aliases =======

## System
alias edit="micro"
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
alias shb="echo && echo '#!usr/bin/bash' && echo && echo '#!usr/bin/bash' | copy"
alias fastfeh="echo && echo 'feh --bg-fill $HOME/Pictures/backgrounds/' && echo && echo 'feh --bg-fill $HOME/Pictures/backgrounds/' | copy"
alias guidevenv="echo && echo 'virtualenv --python=/usr/bin/python3.11 venv' && echo && echo 'virtualenv --python=/usr/bin/python3.11 venv' | copy"
alias guidenetstat="echo && echo 'sudo netstat -nlp | grep PORT' && echo && echo 'sudo netstat -nlp | grep' | copy"
