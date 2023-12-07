#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
DATE=`date '+%F_%H:%M:%S'`
sudo dnf update -y
$SCRIPTDIR/../version.sh
echo ""
sudo needs-restarting
echo ""
echo "***UPDATED ON $DATE***"
echo ""
echo "********************************************************************************"
