#!/bin/bash
sudo clamscan -r -i --exclude-dir="^/sys" --cross-fs=no --log=./clamlog
