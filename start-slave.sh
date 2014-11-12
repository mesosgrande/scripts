docker run \
  --privileged=true \
  -d \
  -e MESOS_LOG_DIR=/var/log \
  -e MESOS_MASTER=zk://localhost:2181/mesos \
  -e MESOS_CONTAINERIZERS=docker,mesos \
  --net="host" \
  -v $(which docker):$(which docker) \
  -v /var/run/docker.sock:/var/run/docker.sock \
  mesosgrande/slave
