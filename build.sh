#!/bin/sh

IMG=$(./lib/docker-build < Dockerfile)

echo -e $IMG
