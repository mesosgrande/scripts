#!/bin/bash
docker run \
  --name master \
  -d \
  -e MESOS_QUORUM=1 \
  -e MESOS_LOG_DIR=/var/log \
  -e MESOS_WORK_DIR=/tmp \
  -e MESOS_ZK=zk://localhost:2181/mesos \
  --net="host" \
  mesosgrande/master
