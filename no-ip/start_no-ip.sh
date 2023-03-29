#!/bin/bash
SCRIPTDIR=$(dirname "$0")
cd $SCRIPTDIR
echo Trying to start the No-IP client!
gnome-terminal -- $SCRIPTDIR/no-ip.sh
