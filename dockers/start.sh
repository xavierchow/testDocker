#!/bin/bash
set -ev

pushd `dirname $0`
docker-compose up -d  --build
docker-compose ps
popd
netstat -an | grep 003
ifconfig

