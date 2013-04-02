rightscale_marker :begin



template "/tmp/config.conf" do
  source "config.conf.erb"
  mode 0644
  action :create
end

rightscale_marker :end

