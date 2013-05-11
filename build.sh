#!/bin/bash
set -e

docker build < Dockerfile
echo ""
echo 'suggestion:'
echo '  docker ps -a'
echo '  docker commit CONTAINERID 23c/ubuntu-12.10-django'
echo '  docker docker run -i -t 23c/ubuntu-12.10-django bash'
echo '    app init APPID'
echo '    exit'
echo '  docker commit $(docker ps -l -q) 23c/APPID'
echo 'docker run 23c/APPID'
