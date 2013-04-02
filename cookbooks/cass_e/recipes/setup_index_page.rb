


rightscale_marker :begin


include_recipe "cass_e::install_httpd"

template "/var/www/index.html" do
  source "index.html.erb"
  mode 0644
  action :create
end

rightscale_marker :end
