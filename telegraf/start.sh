#!/bin/bash

docker run -d \
	--name telegraf \
	-h $(hostname) \
    	-v /:/hostfs:ro \
	-v $(pwd)/telegraf.conf:/etc/telegraf/telegraf.conf \
    	-e HOST_ETC=/hostfs/etc \
    	-e HOST_PROC=/hostfs/proc \
    	-e HOST_SYS=/hostfs/sys \
    	-e HOST_VAR=/hostfs/var \
    	-e HOST_RUN=/hostfs/run \
    	-e HOST_MOUNT_PREFIX=/hostfs \
      	--net=home-automation \
	--restart always \
   	telegraf
