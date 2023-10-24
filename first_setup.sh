#!/usr/bin/bash

# Setup touchpad
sudo mv 30-touchpad.conf /etc/X11/xorg.conf.d/

# Installation

# dnf upgrade
sudo dnf upgrade --refresh -y

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


