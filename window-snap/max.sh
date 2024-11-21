#!/bin/bash
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz
wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
