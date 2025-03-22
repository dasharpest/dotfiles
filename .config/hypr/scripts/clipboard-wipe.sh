#!/usr/bin/env bash

echo

# ------------------------------------------------------
# Confirm Start
# ------------------------------------------------------

if gum confirm "DO YOU WANT TO CLEAR THE CLIPBOARD HISTORY?"; then
    echo
    echo ":: Clipboard history cleared."
elif [ $? -eq 130 ]; then
    exit 130
else
    echo
    echo ":: Cancelled."
    exit
fi

cliphist wipe
echo
echo
echo "Press [ENTER] to close."
read
