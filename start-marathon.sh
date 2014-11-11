docker run \
  --name marathon \
  --link zookeeper:zookeeper \
  --link master:master \
  -d \
  -p 8080:8080 \
  mesosgrande/marathon \
  --master master:5050 \
  --zk zk://zookeeper:2181/marathon

