#!/bin/bash
while :
do 
DATE=`date '+%F_%H:%M:%S'`
sudo apt update && sudo apt upgrade -y
../version.sh
echo ""
echo "***UPDATED ON $DATE***"
echo ""
echo ""
echo "********************************************************************************"
sleep 3600
done
