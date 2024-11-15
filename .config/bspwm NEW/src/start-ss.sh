#!/bin/bash
ps -C "surfshark" >& /dev/null
if [[ $? -gt 0 ]]; then
    surfshark --hidden
else exit
fi
