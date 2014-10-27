require 'yaml'
cloud_config=YAML.load_file('./cloud-config.yaml')
puts cloud_config.inspect
