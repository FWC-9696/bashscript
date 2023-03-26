#!/bin/bash
while :
do 
DATE=`date '+%F_%H:%M:%S'`
sudo apt update && sudo apt upgrade -y
echo ""
canonical-livepatch status
echo ""
echo "***UPDATED ON $DATE***"
echo ""
echo ""
sleep 3600
done
