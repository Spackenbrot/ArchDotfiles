#!/bin/bash

sudo pacman -S xorg lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings i3 nitrogen picom lxappearance pulseaudio networkmanager networkctl dmenu rofi pavucontrol noto-fonts noto-fonts-emoji ttf-dejavu ttf-liberation materia-gtk-theme papirus-icon-theme polybar megasync nemo numlockx xfce4-terminal firefox

cp polyconfig $HOME/.config/polybar/config.ini
cp i3config $HOME/.config/i3/config


cp polystartup $HOME/poly.sh

mkdir $HOME/Pictures
cp -R desktop/ $HOME/Pictures/wallpapers
sudo chmod -R ugo+rx $HOME/Pictures/wallpapers

sudo systemctl enable lightdm

echo "Change lockscreen settings with $sudo lightdm-gtk-greeter-settings"
echo "Change wallpaper with $nitrogen"
echo "! ! Remember to disable vsync in /etc/xdg/picom.conf ! !"
