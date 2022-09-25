#!/bin/bash

docker run -d \
   --name=owserver \
   --net=home-automation \
   --restart=always \
   -p 2121:2121 \
   --device /dev/bus/usb \
   -v /etc/localtime:/etc/localtime:ro \
   -v $(pwd)/data/owfs.conf:/etc/owfs.conf:ro \
   mneundorfer/owserver:latest
