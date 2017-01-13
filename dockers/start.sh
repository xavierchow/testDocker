#!/bin/bash
set -ev

pushd `dirname $0`
docker-compose up  --build
docker-compose ps
popd
netstat -an | grep 300
ifconfig

