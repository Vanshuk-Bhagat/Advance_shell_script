#!/bin/bash
Free_space=$(free -mt | grep "Total" | awk '{print $4}')
#TH stands for Trash Hold(Minimum Ram that should be there)
TH=500
if [ $Free_space -lt $TH ]
then
echo "Warning Ram is running low"
else
echo "Ram is Sufficient - $Free_space"
fi



