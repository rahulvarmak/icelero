log_level                :info
log_location             STDOUT
node_name                'rahulvarmak'
client_key               '/opt/development/.chef/rahulvarmak.pem'
validation_client_name   'chef-validator'
validation_key           '/etc/chef/validation.pem'
chef_server_url          'http://ip-10-36-169-108.eu-west-1.compute.internal:4000'
cache_type               'BasicFile'
cache_options( :path => '/opt/development/.chef/checksums' )
