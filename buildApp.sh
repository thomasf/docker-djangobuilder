#!/bin/sh

IMG=$(./lib/docker-build < Changefile.app)

# FIXME GENERATE SSHG KEYS AND STUFF..
echo -e $IMG
