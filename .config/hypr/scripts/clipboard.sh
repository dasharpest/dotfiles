#!/usr/bin/env bash

DIR="$HOME/.config/hypr/rofi"

pkill rofi || cliphist list | rofi -dmenu -theme "$DIR"/evf/ef-launcher.rasi | cliphist decode | wl-copy
