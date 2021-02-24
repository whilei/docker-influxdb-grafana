#!/usr/bin/env bash

set -e

# docker build -t docker-influxdb-grafana-img .

docker run -d \
	--name docker-influxdb-grafana \
	-p 3003:3003 \
	-p 3004:8083 \
	-p 8086:8086 \
	-v /SAMSUNG_T5_3/influxdb:/var/lib/influxdb \
	-v /SAMSUNG_T5_3/grafana:/var/lib/grafana \
	docker-influxdb-grafana-img
