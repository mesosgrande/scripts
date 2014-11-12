#!/bin/bash
docker run \
  --name master \
  --link zookeeper:zookeeper \
  -d \
  -e MESOS_QUORUM=1 \
  -e MESOS_LOG_DIR=/var/log \
  -e MESOS_WORK_DIR=/tmp \
  -e MESOS_ZK=zk://172.17.33.164:2181/mesos \
  -p 5050:5050 \
  mesosgrande/master
