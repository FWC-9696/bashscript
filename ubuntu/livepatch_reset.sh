#!/bin/bash
sudo pro disable livepatch
sudo snap remove canonical-livepatch
sudo rm -rf /snap/canonical-livepatch
sudo pro enable livepatch
gsettings set com.ubuntu.update-notifier show-livepatch-status-icon true
