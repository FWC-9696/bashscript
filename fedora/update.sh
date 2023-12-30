#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
DATE=`date '+%F_%H:%M:%S'`
sudo dnf install dnf-utils -y
echo ""
sudo dnf install dnf-plugin-system-upgrade -y
echo ""
sudo dnf install redhat-lsb-core -y --allowerasing
echo ""
sudo dnf upgrade -y
echo ""
sudo flatpak update -y
echo ""
echo "ani-cli: "
sudo ani-cli -U
$SCRIPTDIR/../version.sh
sudo needs-restarting -r
echo ""
echo "***UPDATED ON $DATE***"
echo ""
echo "********************************************************************************"
