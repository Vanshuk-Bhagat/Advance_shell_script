#!/bin/check

read -p "Which site you want to check?" site

ping -c 1 $site

#sleep 5s

if [ $? -eq 0 ]
then 
echo "Successfully Connected $site"
else 
echo "Not able to connect $site"
fi



