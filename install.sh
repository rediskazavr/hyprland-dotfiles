#!/bin/bash
#update system/install packages for system
sudo pacman -Syu --needed --noconfirm
sudo pacman -S git base base-devel qt5-wayland dunst qt6-wayland xdg-desktop-portal-hyprland grim polkit-kde-agent slurp neovim fastfetch cava cmatrix maim firefox btop ncmpcpp lf zsh ttf-font-awesome ttf-jetbrains-mono ttf-jetbrains-mono-nerd ly foot --needed --noconfirm

#install yay
cd ~/hyprland-dotfiles/yay/
makepkg -si --noconfirm

#install hyprland
yay -Syu --noconfirm
yay -S hyprland hyprpaper hyprlock waybar --noconfirm


#copy dotfiles in ~/.config
# mkdir -p ~/.config/
# cp -r ... ~/.config/

#reboot
sudo reboot