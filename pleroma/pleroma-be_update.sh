#!/bin/bash
systemctl stop pleroma
su pleroma -s $SHELL -lc "/opt/pleroma/bin/pleroma_ctl update"
su pleroma -s $SHELL -lc "./bin/pleroma_ctl migrate"
systemctl start pleroma
