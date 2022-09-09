#!/bin/bash

INFLUX_VAR=/mnt/DISK1/opt/home-automation/data/influxdb2

docker run \
	--name influxdb -d \
	-p 8086:8086 \
	--volume $INFLUX_VAR:/var/lib/influxdb2 \
	--volume $(pwd)/config.yml:/etc/influxdb2/config.yml \
	--restart always \
	--net home-automation \
	influxdb:2.4.0
