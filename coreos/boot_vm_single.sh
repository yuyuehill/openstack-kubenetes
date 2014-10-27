#!/bin/sh
.  ~/keystonerc
nova boot \
  --user-data ./cloud-config-single.yaml \
  --image coreos \
  --key-name hill  \
  --flavor m1.medium \
  --config-drive false \
  --nic net-id=e94dc8cf-0d7d-40ee-a059-e11fd6d96b11 \
  --security-groups default coreos-single
