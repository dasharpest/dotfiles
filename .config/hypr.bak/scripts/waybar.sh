#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3

DIR="$HOME/.config/hypr/waybar"
THEME="simple"

# -----------------------------------------------------
# Quit all running waybar instances
# -----------------------------------------------------
killall waybar
pkill waybar
sleep 0.5

# -----------------------------------------------------
# Launch waybar with chosen theme
# -----------------------------------------------------
waybar -c "$DIR"/"$THEME"/config -s "$DIR"/"$THEME"/style.css &
