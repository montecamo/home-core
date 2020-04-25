#!/bin/bash

cp -r nginx.build nginx

find nginx -name "*.conf" -exec sed -i '' "s/{{DOMAIN}}/$1/g" {} \;

sed -i '' "s/{{DOMAIN}}/$1/g" init-letsencrypt.sh