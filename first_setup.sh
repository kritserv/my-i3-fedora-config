#!/usr/bin/bash

# Setup touchpad
mv my-i3-fedora-config/30-touchpad.conf /etc/X11/xorg.conf.d/

# Setup local fonts directory
mkdir ~/.local/share/fonts/

# Load wallpaper
mkdir ~/Pictures/backgrounds
curl -o "~/Pictures/backgrounds/wallpaper.jpg" "https://images.unsplash.com/photo-1565876202421-ef255602d0e9?ixlib=rb-4.0.3&amp;q=85&amp;fm=jpg&amp;crop=entropy&amp;cs=srgb&amp;dl=unleashed-agency-A-8glbZbeKw-unsplash.jpg"

# Installation

# dnf upgrade
dnf upgrade --refresh -y
dnf makecache --refresh -y

# xkill
dnf -y install xkill

# micro editor
dnf -y install micro
#micro --version

# microsoft edge
rpm --import https://packages.microsoft.com/keys/microsoft.asc
dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge -y
dnf -y install microsoft-edge-stable
#microsoft-edge -version

# gh cli
dnf -y install 'dnf-command(config-manager)'
dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo -y
dnf -y install gh
dnf update gh -y
#gh --version

# docker engine
dnf -y install dnf-plugins-core
curl -4fsSL https://download.docker.com/linux/fedora/docker-ce.repo | tee /etc/yum.repos.d/docker-ce.repo
dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#docker --version

# docker desktop
dnf -y install gnome-terminal
curl https://desktop.docker.com/linux/main/amd64/docker-desktop-4.24.2-x86_64.rpm --output docker-desktop.rpm
dnf -y install docker-desktop.rpm

# python devel
dnf -y install python3-devel

# python pip
dnf -y install python3-pip
#pip -V

pip install virtualenv
pip install pandas
pip install flask
pip install django
pip install pywebview[qt]
pip install scikit-learn
pip install kivy
pip install Pillow
pip install bs4
pip install tensorflow
pip install pygame-ce

dnf -y install python3-tkinter

dnf -y install python3-pillow python3-pillow-tk

dnf -y install java-latest-openjdk-devel


# compton
dnf -y install libXcomposite-devel libXdamage-devel libXrandr-devel libXinerama-devel libconfig-devel mesa-libGL-devel dbus-devel asciidoc
dnf -y install make
yum install pcre-devel -y
dnf -y install gcc-c++
git clone https://github.com/tryone144/compton
cd compton
make
make -B docs
make install
#compton --version

pip install misaka
pip install moderngl

# steam
dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf -y install steam

# ruby
dnf -y install ruby
dnf -y install rubygem-{irb,rake,rbs,rexml,typeprof,test-unit} ruby-bundled-gems
dnf -y install ruby-devel
#ruby --version

# curses gem
dnf -y install ncurses-devel
gem install curses
#gem --version

# go
curl https://go.dev/dl/go1.21.3.linux-amd64.tar.gz --output go.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go.tar.gz
#go version

# codeblock
dnf -y install codeblocks

# vlc
dnf -y install vlc
dnf -y install mediainfo-gui mediainfo x264-libs x264 --allowerasing

# sublime text
rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
dnf -y install sublime-text

# fastfetch
dnf -y install fastfetch

# skype
mv my-i3-fedora-config/microsoft-skype.repo /etc/yum.repos.d/
dnf -y install distribution-gpg-keys
rpm --import /usr/share/distribution-gpg-keys/skype/SKYPE-GPG-KEY
dnf -y install skypeforlinux
