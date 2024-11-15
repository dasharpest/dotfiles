#!/bin/bash
ps -C "keepassxc" >& /dev/null
if [[ $? -gt 0 ]]; then
    keepassxc
else exit
fi
