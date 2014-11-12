#!/bin/bash
docker run \
  --name zookeeper \
  -d \
  --net="host" \
  mesosgrande/zookeeper
