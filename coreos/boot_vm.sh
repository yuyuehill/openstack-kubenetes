#!/bin/sh
.  ~/keystonerc
nova boot \
  --user-data ./cloud-config.yaml \
  --image coreos \
  --key-name hill  \
  --flavor m1.small \
  --config-drive false \
  --nic net-id=e94dc8cf-0d7d-40ee-a059-e11fd6d96b11 \
  --security-groups default coreos
