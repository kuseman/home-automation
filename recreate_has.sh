#!/bin/bash

sudo docker compose -f $(pwd)/home-automation.yml up -d --no-deps --build homeassistant
