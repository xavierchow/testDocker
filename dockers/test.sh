#!/bin/sh
set -ev
sleep 30
curl -X POST http://localhost:13003/
curl -X POST http://localhost:5000/
