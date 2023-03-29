#!/bin/bash
SCRIPTDIR=$(dirname "$0")
cd $SCRIPTDIR
gnome-terminal -- $SCRIPTDIR/update.sh

