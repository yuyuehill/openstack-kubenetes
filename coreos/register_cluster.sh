#!/bin/sh
UUID=mytestcluster
addr=10.0.0.4

curl -X PUT "http://$addr:4001/v2/keys/_etcd/registry/${UUID}/etcd1?ttl=604800" -d value=$addr:7001
curl -X PUT "http://$addr:4001/v2/keys/_etcd/registry/${UUID}/_state?prevExist=false" -d value=started
