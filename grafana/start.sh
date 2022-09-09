#!/bin/bash

GRAFANA_VAR=/mnt/DISK1/opt/home-automation/data/grafana
ID=$(id -u)

docker run -d \
	-p 3000:3000 \
	--user $ID \
	--name grafana \
	--restart always \
        --net home-automation \
	--volume $GRAFANA_VAR:/var/lib/grafana \
	grafana/grafana-oss
