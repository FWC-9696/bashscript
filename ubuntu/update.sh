#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
while :
do 
DATE=`date '+%F_%H:%M:%S'`
sudo apt update && sudo apt upgrade -y
echo ""
flatpak update -y
echo "" 
$SCRIPTDIR/../version.sh
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
