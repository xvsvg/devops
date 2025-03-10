#!/bin/bash

set -e

docker compose up \
	-d \
	-e NGINX_HTTP_EXTERNAL_PORT=$NGINX_HTTP_EXTERNAL_PORT \
	-e NGINX_HTTPS_EXTERNAL_PORT=$NGINX_HTTPS_EXTERNAL_PORT \
	-e NGINX_CONTAINER_NAME=$NGINX_CONTAINER_NAME \
	-/build \
	--force-recreate