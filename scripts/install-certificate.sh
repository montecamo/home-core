#!/bin/bash

sudo apt update
sudo apt install snapd -y
sudo snap install core
sudo snap refresh core
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo snap set certbot trust-plugin-with-root=ok
sudo snap install certbot-dns-cloudflare

echo "dns_cloudflare_api_token = $1" >> ~/.secret.ini  

sudo certbot certonly --dns-cloudflare --dns-cloudflare-credentials ~/.secret.ini --dns-cloudflare-propagation-seconds 30 -d $2 -d *.$2 -i nginx
