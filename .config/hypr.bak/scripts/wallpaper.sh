#!/bin/bash

wallpaper=$1

ln -sf $wallpaper ~/.config/hypr/temp/current.png &

### execute wallust skipping tty and terminal changes
# wallust -d ~/.config/hypr/wallust/ run ~/.config/hypr/temp/current.png -s &
    
wal -qi ~/.config/hypr/temp/current.png &
wal -R &
sleep 0.5 &
~/.config/hypr/scripts/waybar.sh &
~/.config/hypr/scripts/swaync.sh &

magick convert ~/.config/hypr/temp/current.png -resize 100x100^ \
				-gravity Center  \
				-extent 100x100  \
				-blur 0x1 \
				~/.config/hypr/temp/rofi.png
exit 1
