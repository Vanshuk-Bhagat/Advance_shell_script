#!/bin/bash
#Monitoring the free Filesystem Disk

FU=$(df -H | grep "sda1" | awk '{print $5}' | tr -d %)

#To forward email if disk space is low

TO="vanshukbhagat2@gmail.com"
if [ $FU -ge 80 ]
then
echo "Warning Disk space is low!!! $FU %" | mail -s "Disk SPACE ALERT" $TO 

else

echo "Everything is good"

fi
