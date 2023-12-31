#!/usr/bin/bash

# Setup touchpad
sudo mv my-i3-fedora-config/30-touchpad.conf /etc/X11/xorg.conf.d/

# Setup local fonts directory
mkdir ~/.local/share/fonts/

# Load wallpaper
mkdir ~/Pictures/backgrounds
curl -o ~/Pictures/backgrounds/wallpaper.jpg "https://images.unsplash.com/photo-1495476479092-6ece1898a101"

# Installation

# dnf upgrade
sudo dnf upgrade --refresh -y
sudo dnf makecache --refresh -y

# micro editor
sudo dnf -y install micro
#micro --version

# microsoft edge
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge -y
sudo dnf -y install microsoft-edge-stable
#microsoft-edge -version

# gh cli
sudo dnf -y install 'dnf-command(config-manager)'
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo -y
sudo dnf -y install gh
sudo dnf update gh -y
#gh --version

# docker engine
sudo dnf -y install dnf-plugins-core
sudo curl -4fsSL https://download.docker.com/linux/fedora/docker-ce.repo | sudo tee /etc/yum.repos.d/docker-ce.repo
sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
#docker --version

# docker desktop
sudo dnf -y install gnome-terminal
curl https://desktop.docker.com/linux/main/amd64/docker-desktop-4.24.2-x86_64.rpm --output docker-desktop.rpm
sudo dnf -y install docker-desktop.rpm

# python pip
sudo dnf -y install python3-pip
#pip -V

pip install virtualenv
pip install pandas
pip install flask
pip install django
pip install pywebview[qt]
pip install scikit-learn
pip install kivy

sudo dnf -y install python3-tkinter

sudo dnf -y install java-latest-openjdk-devel


# compton
sudo dnf -y install libXcomposite-devel libXdamage-devel libXrandr-devel libXinerama-devel libconfig-devel mesa-libGL-devel dbus-devel asciidoc
sudo dnf -y install make
sudo yum install pcre-devel -y
sudo dnf -y install gcc-c++
git clone https://github.com/tryone144/compton
cd compton
make
make -B docs
sudo make install
#compton --version

# steam
sudo dnf -y install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install steam

# ruby
sudo dnf -y install ruby
sudo dnf -y install rubygem-{irb,rake,rbs,rexml,typeprof,test-unit} ruby-bundled-gems
sudo dnf -y install ruby-devel
#ruby --version

# curses gem
sudo dnf -y install ncurses-devel
gem install curses
#gem --version

# go
curl https://go.dev/dl/go1.21.3.linux-amd64.tar.gz --output go.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go.tar.gz
#go version
