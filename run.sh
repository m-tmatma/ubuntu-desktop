#!/bin/sh

xhost +local:

docker run --rm -it \
    -e DISPLAY=unix${DISPLAY} \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.Xauthority:/root/.Xauthority \
    -w /root \
    ubuntu-desktop
