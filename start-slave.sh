docker run \
  --privileged=true \
  -d \
  -e MESOS_LOG_DIR=/var/log \
  -e MESOS_MASTER=zk://172.17.35.196:2181/mesos \
  -e MESOS_CONTAINERIZERS=docker,mesos \
  -p 5052:5051 \
  -v $(which docker):$(which docker) \
  -v /var/run/docker.sock:/var/run/docker.sock \
  mesosgrande/slave
