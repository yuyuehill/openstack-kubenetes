nova boot \
  --image Fedora-x86_64-20-20140618-sda \
  --key-name hill  \
  --flavor m1.small \
  --config-drive false \
  --nic net-id=e94dc8cf-0d7d-40ee-a059-e11fd6d96b11,v4-fixed-ip=192.168.0.28 \
  --nic net-id=8c109cd1-ef9a-4300-8690-1e0dd3725379,v4-fixed-ip=10.244.6.1 \
  --security-groups default \
  testvm1 
nova boot \
  --image Fedora-x86_64-20-20140618-sda \
  --key-name hill  \
  --flavor m1.small \
  --config-drive false \
  --nic net-id=e94dc8cf-0d7d-40ee-a059-e11fd6d96b11,v4-fixed-ip=192.168.0.29 \
  --nic net-id=8c109cd1-ef9a-4300-8690-1e0dd3725379,v4-fixed-ip=10.244.7.1 \
  --security-groups default \
  testvm2 
