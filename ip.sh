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
                git add ip.txt
				git commit -m "New IP"
				git push
        else
                echo "Found"
        fi
else
        echo &date >> ip.txt
        echo "Server error" >> ip.txt
        git add ip.txt
		git commit -m "Server Error"
		git push
fi

