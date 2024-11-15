#!/bin/bash
ps -C "obsidian" >& /dev/null
if [[ $? -gt 0 ]]; then
    obsidian --hidden
else exit
fi
