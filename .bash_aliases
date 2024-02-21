#====== Aliases =======

## System
alias edit="micro"
alias e="edit"
alias addalias="edit ~/.bash_aliases"
alias addbashrc="edit ~/.bashrc"
alias addconfig="edit ~/.config/i3/config"
alias addcompton="edit ~/.config/compton.conf"
alias addstatus="edit ~/.i3status.conf"
alias addmicro="edit ~/.config/micro/colorschemes/mycolor.micro"
alias addterminalcolor="edit ~/.config/xfce4/terminal/colorschemes/newcolor"
alias addthaitoggle="setxkbmap -layout us,th && setxkbmap -option 'grp:alt_space_toggle' && echo && echo 'alt-space to toggle th-en' && echo "
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
alias ghub="cd ~/Documents/ghub && ls"

## Guide
alias shb="echo && echo '#!usr/bin/bash' && echo && echo '#!usr/bin/bash' | copy"
alias fastfeh="echo && echo 'feh --bg-fill $HOME/Pictures/backgrounds/' && echo && echo 'feh --bg-fill $HOME/Pictures/backgrounds/' | copy"
alias guidevenv="echo && echo 'virtualenv --python=/usr/bin/python3.11 venv' && echo && echo 'virtualenv --python=/usr/bin/python3.11 venv' | copy"
alias guidenetstat="echo && echo 'sudo netstat -nlp | grep PORT' && echo && echo 'sudo netstat -nlp | grep' | copy"
alias guidebrightness="echo && echo 'brightnessctl set 0% - 100%' && echo && echo 'brightnessctl set ' | copy"
alias guideaddapp="echo && echo 'touch new file and make executeable in this path $HOME/.local/bin' && echo && echo '#!usr/bin/bash' && echo 'cd ~/Desktop' && echo './AppName.appimage &' && echo "
