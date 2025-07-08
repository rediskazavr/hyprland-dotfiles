#!/bin/bash

#======================
#dofiles by rediskazavr
#======================

#update system
sudo pacman -Syu --noconfirm

#install hyprland
sudo pacman -S qt5-wayland qt6-wayland xdg-desktop-portal-hyprland polkit-kde-agent hyprland hyprpaper waybar hyprcursor wofi maim lf ly foot fastfetch cava cmatrix lolcat figlet neovim git firefox btop zsh ttf-jetbrains-mono ttf-jetbrains-mono-nerd ttf-font-awesome  --noconfirm

#copy dotfiles
mkdir -r ~/.config/
cp -r ~/hyprland-dotfiles/dotfiles/wallpapers ~/.config/

#install yay
mkdir ~/deletemepls/
cd ~/deletemepls
git clone https://aur.archlinux.org/yay
cd yay
makepkg -si --noconfirm

#install tty-clock
yay -S tty-clock

#reboot
sudo reboot
