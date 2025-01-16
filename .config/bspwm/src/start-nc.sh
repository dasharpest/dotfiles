#!/bin/bash
ps -C "nextcloud" >& /dev/null
if [[ $? -gt 0 ]]; then
    nextcloud
else exit
fi
