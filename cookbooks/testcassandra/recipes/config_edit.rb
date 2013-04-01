#
# Cookbook Name:: testcassandra
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin


template "/tmp/config.conf" do
  source "config.conf.erb"
  variables(
    :cluster_name => node[:config_edit][:cluster_name]
  )
end


rightscale_marker :end








