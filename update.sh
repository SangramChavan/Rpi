#!/bin/bash -e
 
# 1. Get Update.
/usr/bin/sudo apt-get update
 
# 2. Get Upgrade.
/usr/bin/sudo apt-get -y upgrade
 
# 3. Update rpi
/usr/bin/sudo rpi-update
 
# 4 Reboot
/usr/bin/sudo shutdown -r
