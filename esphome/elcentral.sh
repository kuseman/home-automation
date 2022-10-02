#!/bin/bash

docker run --rm -v /etc/hosts:/etc/hosts:ro -v "${PWD}":/config -it esphome/esphome run elcentral.yml
