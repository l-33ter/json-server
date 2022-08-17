#!/usr/bin/env bash

set -e

args="$*"

args="$* --config /json-server.conf/json-server.json"

file=/data/db.json

if [ -f $file ]; then
  echo "Found db.json, trying to open"
  args="$args /data/db.json"
fi

file=/data/file.js

if [ -f $file ]; then
  echo "Found file.js seed file, trying to open"
  args="$args /data/file.js"
fi

json-server $args
