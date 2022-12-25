#!/bin/bash

sudo pacman -S xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings xmonad xmonad-contrib xmobar nitrogen picom lxappearance pulseaudio networkmanager networkctl dmenu rofi pavucontrol noto-fonts noto-fonts-emoji ttf-dejavu ttf-liberation materia-gtk-theme papirus-icon-theme nemo numlockx xfce4-terminal firefox

mkdir $HOME/.xmonad
mkdir $HOME/.config/xmobar
cp xmonad.hs $HOME/.xmonad/xmonad.hs
cp xmobarrc $HOME/.config/xmobar/xmobarrc

mkdir $HOME/Pictures
cp -R desktop/ $HOME/Pictures/wallpapers
sudo chmod -R ugo+rx $HOME/Pictures/wallpapers

sudo systemctl enable lightdm

echo "Change lockscreen settings with $sudo lightdm-gtk-greeter-settings"
echo "Change wallpaper with $nitrogen"
echo "! ! Remember to disable vsync in /etc/xdg/picom.conf ! !"
