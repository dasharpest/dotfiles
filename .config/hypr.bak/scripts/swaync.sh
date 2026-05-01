#!/usr/bin/env bash

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
