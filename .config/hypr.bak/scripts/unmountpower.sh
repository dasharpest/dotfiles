#!/usr/bin/env bash

echo

# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------

if gum confirm "DO YOU WANT TO UNMOUNT NETWORK DRIVES & SHUTDOWN?"; then
    echo ":: Please enter:"
elif [ $? -eq 130 ]; then
    exit 130
else
    echo
    echo ":: Cancelled."
    exit
fi

sudo systemctl stop mnt-data.automount && \
sudo systemctl stop mnt-media.automount
echo
echo
echo "Drives unmounted. Press [ENTER] to shutdown."
read
systemctl poweroff
