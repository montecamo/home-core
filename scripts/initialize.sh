#!/bin/bash

cd ~/home-page/scripts

bash docker-install.sh
bash clone-projects.sh
bash build.sh $2
bash install-certificate.sh $1 $2
bash start.sh