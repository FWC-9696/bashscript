#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
sudo dnf install dnf-utils -y
echo ""
sudo dnf install dnf-plugin-system-upgrade -y
echo ""
sudo dnf install redhat-lsb -y --allowerasing
echo ""
while :
do
	DATE=`date '+%F %H:%M:%S'`
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
	echo ""
	echo "Press any key to check again."
	read -t 3600
done

