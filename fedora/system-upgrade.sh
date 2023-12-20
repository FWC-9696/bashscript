#!/bin/bash
SCRIPTDIR="$(dirname $(readlink -f $0))"
$SCRIPTDIR/update.sh
sudo dnf install gnome-software -y
sudo dnf upgrade --refresh
gnome-software --autoupdate --mode=updates
