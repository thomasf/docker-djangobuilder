#!/bin/bash
set -e

docker build < Dockerfile
echo ""
echo 'suggestion:'
echo ' docker ps -a'
echo ' docker commit CONTAINERID 23c/ubuntu-12.10-django'
