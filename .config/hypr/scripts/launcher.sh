#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
## Available Styles
#
## style-1     style-2     style-3     style-4     style-5

#dir="$HOME/.config/hypr/rofi/adi/files/launchers/type-3"
#theme='style-1'

## Run
#rofi \
#    -show drun \
#    -theme ${dir}/${theme}.rasi

#pkill rofi || rofi -show drun -replace -i -theme ~/.config/rofi/config.rasi
pkill rofi || rofi -show drun -replace -i -theme ~/.config/hypr/rofi/evf/ef-launcher.rasi
#pkill rofi || rofi -show drun -replace -i -theme ~/.config/hypr/rofi/onlyvip/config.rasi
