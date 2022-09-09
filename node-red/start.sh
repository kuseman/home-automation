#!/bin/bash

HOST_DATA_PATH=$(pwd)/data

# Setup required files
touch $HOST_DATA_PATH/lowest-price-settings.json
touch $HOST_DATA_PATH/nordpool-prices.json

docker run \
	-d \
	--restart always \
	-p 1880:1880 \
	-v $HOST_DATA_PATH:/data \
	-e TZ='Europe/Stockholm' \
	--net home-automation \
	--name mynodered nodered/node-red
