#!/bin/sh
set -ev
curl -X POST http://localhost:13003/
curl -X POST http://localhost:5000/
