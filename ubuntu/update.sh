#!/bin/bash
SCRIPTDIR=$(dirname "$0")
cd $SCRIPTDIR
while :
do 
DATE=`date '+%F_%H:%M:%S'`
sudo apt update && sudo apt upgrade -y
../version.sh
echo ""
if [ -f /var/run/reboot-required ]; then
  echo '***REBOOT REQUIRED***'
fi
echo ""
echo "***UPDATED ON $DATE***"
echo ""
echo ""
echo "********************************************************************************"
sleep 3600
done
