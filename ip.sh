#!/bin/sh
#echo "Starting"
cd /home/pi/Scripts/
T1=$(curl ifconfig.me)
#echo $T1
T2=$(tail -1 ip.txt)
#echo $T2
#echo ${#T1}
if [ ${#T1} -le 20 ] ; then
        if [ !  "$T1" = "$T2" ]; then
                echo &date >> ip.txt
                echo $T1 >> ip.txt
                cd /home/pi/Dropbox-Uploader/
                ./dropbox_uploader.sh upload /home/pi/Scripts/ip.txt ip.txt
        else
                echo "Found"
        fi
else
        echo &date >> ip.txt
        echo "Server error" >> ip.txt
        cd /home/pi/Dropbox-Uploader/
        ./dropbox_uploader.sh upload /home/pi/Scripts/ip.txt ip.txt
fi

