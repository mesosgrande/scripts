docker run \
  --name marathon \
  --link master:master \
  -d \
  -p 8080:8080 \
  mesosgrande/marathon \
  --master master:5050 \
  --zk zk://172.17.35.196:2181/marathon

