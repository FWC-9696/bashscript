#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
sudo apt install lsb-release -y
while :
do
DATE=`date '+%F_%H:%M:%S'`
sudo apt update && sudo apt upgrade -y
echo ""
flatpak update -y

$SCRIPTDIR/../version.sh

if [ -f /var/run/reboot-required ]; then
  echo "***REBOOT IS REQUIRED FOR THE FOLLOWING PACKAGES:***"
  cat /var/run/reboot-required.pkgs
fi

echo "***UPDATED ON $DATE***"
echo ""
echo "********************************************************************************"
sleep 3600
done
