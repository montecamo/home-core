#!/bin/bash

cd ~/home-page

cp -r nginx.build nginx

find nginx -name "*.conf" -exec sed -i "s/{{DOMAIN}}/$1/g" {} \;