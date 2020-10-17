#!/bin/sh
#echo "Starting"
T1=$(curl ifconfig.me)
#echo $T1
T2=$(tail -1 ip.txt)
#echo $T2
if [ !  "$T1" = "$T2" ]; then
        echo "\n" >> ip.txt
        echo $T1 >> ip.txt
        cd /home/pi/Dropbox-Uploader/
        ./dropbox_uploader.sh upload /home/pi/Scripts/ip.txt ip.txt
else
        echo "Found"
fi
