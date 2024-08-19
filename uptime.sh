#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
while :
do
$SCRIPTDIR/version.sh
if [ -f /var/run/reboot-required ]; then
  echo "***REBOOT IS REQUIRED FOR THE FOLLOWING PACKAGES***"
  cat /var/run/reboot-required.pkgs
  echo ""
fi
sleep 600
done
