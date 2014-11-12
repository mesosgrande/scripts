curl -X POST -H "Accept: application/json" -H "Content-Type: application/json" \
  192.168.59.103:8080/v2/apps -d '
{
  "container": {
    "docker": {
      "image": "nginx"
    },
    "volumes" : [
      {
        "containerPath": "/etc/a",
        "hostPath": "/var/data/a",
        "mode": "RO"
      },
      {
        "containerPath": "/etc/b",
        "hostPath": "/var/data/b",
        "mode": "RW"
      }
    ]
  },
  "id": "nginx",
  "instances": "1",
  "cpus": "0.5",
  "mem": "512",
  "uris": [],
  "cmd": "while sleep 10; do date -u +%T; done"
}'
