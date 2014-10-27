.  ~/keystonerc
ssh-keygen -R 192.168.0.25
ssh-keygen -R 192.168.0.26
ssh-keygen -R 192.168.0.27
nova boot \
  --user-data ./master.yaml \
  --image coreos \
  --key-name hill  \
  --flavor m1.medium \
  --config-drive false \
  --nic net-id=e94dc8cf-0d7d-40ee-a059-e11fd6d96b11,v4-fixed-ip=192.168.0.25 \
  --nic net-id=8c109cd1-ef9a-4300-8690-1e0dd3725379,v4-fixed-ip=10.244.0.1 \
  --security-groups default \
  master 
nova boot \
  --user-data ./node1.yaml \
  --image coreos \
  --key-name hill  \
  --flavor m1.medium \
  --config-drive false \
  --nic net-id=e94dc8cf-0d7d-40ee-a059-e11fd6d96b11,v4-fixed-ip=192.168.0.26 \
  --nic net-id=8c109cd1-ef9a-4300-8690-1e0dd3725379,v4-fixed-ip=10.244.1.1 \
  --security-groups default \
  node1 
nova boot \
  --user-data ./node2.yaml \
  --image coreos \
  --key-name hill  \
  --flavor m1.medium \
  --config-drive false \
  --nic net-id=e94dc8cf-0d7d-40ee-a059-e11fd6d96b11,v4-fixed-ip=192.168.0.27 \
  --nic net-id=8c109cd1-ef9a-4300-8690-1e0dd3725379,v4-fixed-ip=10.244.2.1 \
  --security-groups default \
  node2
