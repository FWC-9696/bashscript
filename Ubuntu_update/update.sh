#!/bin/bash
while :
do 
DATE=`date '+%F_%H:%M:%S'`
sudo apt update && sudo  apt upgrade -y
echo "***UPDATED ON $DATE***"
sleep 3600
done
