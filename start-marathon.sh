docker run \
  --name marathon \
  -d \
  --net="host" \
  mesosgrande/marathon \
  --master localhost:5050 \
  --zk zk://localhost:2181/marathon

