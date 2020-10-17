#!/bin/sh
#echo "Starting"
T1=$(curl ifconfig.me) #Get external ip
#echo $T1
T2=$(tail -1 ip.txt) #Read the latest ip in the file
#echo $T2
if [ !  "$T1" = "$T2" ]; then #if different update and upload
        echo "\n" >> ip.txt
        echo $T1 >> ip.txt
        cd /home/pi/Dropbox-Uploader/
        ./dropbox_uploader.sh upload /home/pi/Scripts/ip.txt ip.txt
else
        echo "Found" #already is the latest in the file
fi
