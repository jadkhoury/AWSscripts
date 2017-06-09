#!/bin/bash
sudo service lightdm stop
sudo pkill X
res="$(echo $?)"
while [ $res -eq 0 ]
do
   sudo pkill X
   res="$(echo $?)"
done
sudo nvidia-xconfig -a --use-display-device=None --virtual=1920x1080
sudo sed -i 's/    BoardName      "GRID K520"/    BoardName      "GRID K520"\n    BusID          "0:3:0"/g' /etc/X11/xorg.conf
export DISPLAY=:0
sudo /usr/bin/X &

#To launch this script at startup, copy it in /etc/profile.d/ and make it runnable