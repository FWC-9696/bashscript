#!/bin/bash
SCRIPTDIR=$(dirname "$0")
while :
do 
DATE=`date '+%F_%H:%M:%S'`
sudo apt update && sudo apt upgrade -y
cd $SCRIPTDIR
../version.sh
echo ""
echo "***UPDATED ON $DATE***"
echo ""
echo ""
echo "********************************************************************************"
sleep 3600
done
