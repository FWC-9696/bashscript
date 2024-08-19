#!/bin/bash
sudo pro disable livepatch
sudo snap remove canonical-livepatch
sudo rm -rf /snap/canonical-livepatch
sudo pro enable livepatch
