#!/usr/bin/bash

# Setup touchpad
sudo mv 30-touchpad.conf /etc/X11/xorg.conf.d/

# Installation

# dnf upgrade
sudo dnf upgrade --refresh -y

# microsoft edge
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge -y
sudo dnf install microsoft-edge-stable -y
#microsoft-edge -version

# gh cli
sudo dnf install 'dnf-command(config-manager)' -y
sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo -y
sudo dnf install gh -y
sudo dnf update gh -y
#gh --version
