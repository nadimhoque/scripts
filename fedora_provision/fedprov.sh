#!/bin/bash

echo "Adding the rpmfusion repos"
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

echo "Adding the vscode repo"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

echo "Installing packages"
dnf install x265 mpv ffmpeg htop vim gcc gcc-c++ golang code screen tmux remmina openssh-askpass virt-manager -y

echo "Seting up go"

mkdir -p $HOME/go
echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc
source $HOME/.bashrc

