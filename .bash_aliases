#====== Aliases =======

## System
alias edit="micro"
alias e="edit"
alias addalias="echo -e 'edit ~/.bash_aliases' && edit ~/.bash_aliases"
alias addbashrc="echo -e 'edit ~/.bashrc' && edit ~/.bashrc"
alias addconfig="echo -e 'edit ~/.config/i3/config' && edit ~/.config/i3/config"
alias addcompton="echo -e 'edit ~/.config/compton.conf' && edit ~/.config/compton.conf"
alias addstatus="echo -e 'edit ~/.i3status.conf' && edit ~/.i3status.conf"
alias addmicrocolor="echo -e 'edit ~/.config/micro/colorschemes/mycolor.micro' && edit ~/.config/micro/colorschemes/mycolor.micro"
alias addmicrosetting="echo -e 'edit ~/.config/micro/settings.json' && edit ~/.config/micro/settings.json"
alias addterminalcolor="echo -e 'edit ~/.config/xfce4/terminal/colorschemes/newcolor' && edit ~/.config/xfce4/terminal/colorschemes/newcolor"
alias addthaitoggle="echo -e 'setxkbmap -layout us,th && setxkbmap -option `grp:ctrl_space_toggle`' && setxkbmap -layout us,th && setxkbmap -option 'grp:ctrl_space_toggle' && echo && echo 'ctrl-space to toggle th-en' && echo "
alias comptonrun="compton &"
alias comptonstop="killall compton"
alias open="echo -e 'xdg-open' && xdg-open"
alias shut="sudo shutdown now"
alias copy="echo -e 'xclip -selection clipboard' && xclip -selection clipboard"
alias shot="echo -e 'import screenshot.png' && import screenshot.png"
alias upd="echo -e 'sudo dnf up' && sudo dnf up"

## Navigation
alias cls="clear"
alias dir="echo -e 'ls -al' && ls -al"

## Programming
alias py="python"
alias pm="echo -e 'py main.py' && python main.py"
alias pg="echo -e 'pygbag' && pygbag"
alias dockerdesktop="echo -e 'systemctl --user start docker-desktop' && systemctl --user start docker-desktop"
alias ghub="echo -e 'cd ~/Documents/ghub && ls' && cd ~/Documents/ghub && ls"

## Guide
alias shb="echo && echo '#!usr/bin/bash' && echo && echo '#!usr/bin/bash' | copy"
alias fastfeh="echo && echo 'feh --bg-fill $HOME/Pictures/backgrounds/' && echo && echo 'feh --bg-fill $HOME/Pictures/backgrounds/' | copy"
alias guidevenv="echo && echo 'virtualenv --python=/usr/bin/python3.11 venv' && echo && echo 'virtualenv --python=/usr/bin/python3.11 venv' | copy"
alias guidenetstat="echo && echo 'sudo netstat -nlp | grep PORT' && echo && echo 'sudo netstat -nlp | grep' | copy"
alias guidebrightness="echo && echo 'brightnessctl set 0% - 100%' && echo && echo 'brightnessctl set ' | copy"
alias guideaddapp="echo && echo 'touch new file and make executeable in this path $HOME/.local/bin' && echo && echo '#!usr/bin/bash' && echo 'cd ~/Desktop' && echo './AppName.appimage &' && echo "
