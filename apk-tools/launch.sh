#!/bin/bash

echo "Launching polyverse/alpine-dev container in mode with modifiable apk-tools package"
docker run --rm -it -v $PWD:/apk-tools polyverse/alpine-dev

