#!/bin/sh

IMG=$(./lib/docker-build < Changefile)

echo -e $IMG
