#!/bin/sh

IMG=$(docker build < Dockerfile)

echo -e $IMG
