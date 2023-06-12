#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
DATE=`date '+%F_%H:%M:%S'`
sudo dnf update -y
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
