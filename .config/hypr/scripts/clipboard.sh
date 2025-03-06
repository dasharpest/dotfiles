#!/usr/bin/env bash

DIR="$HOME/.config/hypr/rofi"

#pkill rofi || cliphist list | rofi -dmenu -theme ~/.config/hypr/rofi/simple/cliphist.rasi | cliphist decode | wl-copy
pkill rofi || cliphist list | rofi -dmenu -theme ~/.config/hypr/rofi/evf/config.rasi
