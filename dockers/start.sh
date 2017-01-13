#!/bin/bash
set -ev

pushd `dirname $0`
docker-compose up -d  --build
docker-compose ps
popd

function try()
{
    [[ $- = *e* ]]; SAVED_OPT_E=$?
    set +e
}

function catch()
{
    export ex_code=$?
    (( $SAVED_OPT_E )) && set +e
    return $ex_code
}

while true; do
  try
  (
    curl -X POST http://localhost:13003/ && curl -X POST http://localhost:5000/
  )
  catch || {
    sleep 3
    continue
  }
  break
done

netstat -an | grep 003
ifconfig

