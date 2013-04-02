rightscale_marker :begin

execute "service" do
 command "service cassandra stop"
 action :run
end

execute "rm" do
 command "rm -rf /var/lib/cassandra/*"
 action :run
end

template "/etc/cassandra/cassandra.yaml" do
  source "cassandra.yaml.erb"
  mode 0644
  action :create
end

execute "service" do
 command "service cassandra start"
 action :run
end



rightscale_marker :end

