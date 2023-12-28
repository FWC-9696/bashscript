#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
DATE=`date '+%F_%H:%M:%S'`
sudo dnf install dnf-utils -y
sudo dnf install dnf-plugin-system-upgrade -y
sudo dnf install redhat-lsb-core -y --allowerasing
sudo dnf upgrade -y
echo ""
echo "ani-cli: "
sudo ani-cli -U
$SCRIPTDIR/../version.sh
sudo needs-restarting -r
echo ""
echo "***UPDATED ON $DATE***"
echo ""
echo "********************************************************************************"
