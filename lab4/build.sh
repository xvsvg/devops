#!/bin/bash

set -e

docker build --build-arg NODE_VERSION=$NODE_VERSION -t myapp-system -f ./system.dockerfile .

docker docker build -t myapp-build -f ./build.dockerfile .

docker build -t myapp-final --build-arg NODE_PORT=$NODE_PORT -f ./final.dockerfile .