#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3

# -----------------------------------------------------
# Quit all running swaync instances
# -----------------------------------------------------
killall swaync
pkill swaync
sleep 0.5

# -----------------------------------------------------
# Launch swaync with chosen config
# -----------------------------------------------------
swaync -c ~/.config/hypr/swaync/config.json -s ~/.config/hypr/swaync/style.css &
