#!/bin/bash
systemctl stop nginx
certbot renew --standalone
systemctl start nginx
