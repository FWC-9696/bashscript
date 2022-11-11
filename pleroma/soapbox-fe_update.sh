#!/bin/bash
curl -L https://gitlab.com/soapbox-pub/soapbox-fe/-/jobs/artifacts/develop/download?job=build-production -o /tmp/soapbox-fe.zip
busybox unzip /tmp/soapbox-fe.zip -o -d /opt/soapbox
rm /tmp/soapbox-fe.zip
