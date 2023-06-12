#!/bin/bash
SCRIPTDIR=$(dirname "$0")
cd $SCRIPTDIR
DATE=`date '+%F_%H:%M:%S'`
sudo dnf update -y
../version.sh
echo "***UPDATED ON $DATE***"
echo ""
echo ""
echo "********************************************************************************"
