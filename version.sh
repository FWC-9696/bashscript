#!/bin/bash
ID=`lsb_release -i | cut -f2`
RELEASE=`lsb_release -r | cut -f2`
CODENAME=`lsb_release -c | cut -f2`
FULLNAME="$ID $RELEASE "$CODENAME""
KERNEL=`uname -srm`
echo ""
echo -e "Kernel: \t $KERNEL"
echo -e "Release: \t $FULLNAME"
echo ""
uptime -p
echo ""
