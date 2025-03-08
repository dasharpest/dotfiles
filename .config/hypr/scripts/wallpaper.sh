#!/bin/bash

wallpaper=$1

ln -sf $wallpaper ~/.config/hypr/temp/current.png &&
wal -qi ~/.config/hypr/temp/current.png &&
wal -R &&
~/.config/hypr/scripts/waybar.sh

magick convert ~/.config/hypr/temp/current.png -resize 100x100^ \
				-gravity Center  \
				-extent 100x100  \
				-blur 0x1 \
				~/.config/hypr/temp/rofi.png
exit 1
