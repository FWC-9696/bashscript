#!/bin/bash
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz
WIDTH=`xdpyinfo | grep 'dimensions:' | cut -f 2 -d ':' | cut -f 1 -d 'x'` 
HALF=$(($WIDTH/2))
HEIGHT=`xdpyinfo | grep 'dimensions:' | cut -f 2 -d 'x' | cut -f 1 -d ' '` 
wmctrl -r :ACTIVE: -b add,maximized_vert
wmctrl -r :ACTIVE: -e 0,0,0,$HALF,-1
