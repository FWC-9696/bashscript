#!/bin/bash
sudo dnf config-manager addrepo --set=baseurl=https://packages.microsoft.com/yumrepos/edge --id=microsoft-edge-insider
echo
echo 'Install with "sudo dnf install microsoft-edge-beta" or "sudo dnf install microsoft-edge-dev"'
echo
