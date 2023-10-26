#!/usr/bin/bash

# Setup touchpad
sudo mv 30-touchpad.conf /etc/X11/xorg.conf.d/

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
curl https://desktop.docker.com/linux/main/amd64/docker-desktop-4.24.2-x86_64.rpm
sudo dnf -y install docker-desktop-4.24.2-x86_64.rpm

# python pip
sudo dnf -y install python3-pip

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
