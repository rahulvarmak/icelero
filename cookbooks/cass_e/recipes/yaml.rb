rightscale_marker :begin



template "/tmp/cassandra.yaml" do
  source "cassandra.yaml.erb"
  mode 0644
  action :create
end

rightscale_marker :end

