


rightscale_marker :begin



template "/var/www/index.html" do
  source "index.html.erb"
  mode 0644
  action :create
end

rightscale_marker :end
