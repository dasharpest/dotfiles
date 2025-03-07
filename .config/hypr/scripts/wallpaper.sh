#!/bin/bash

wallpaper=$1

ln -sf $wallpaper ~/.config/hypr/temp/current.png &&
wal -qi ~/.config/hypr/temp/current.png &&
wal -R &&
~/.config/hypr/scripts/waybar.sh
sleep 1
cd ~/.config/hypr/temp/ &&
magick current.png -resize 500x500\! -blur 50x30 rofi.png
