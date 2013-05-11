#!/bin/sh

set -e

IMG=$(docker build < Dockerfile)

echo ${IMG}

