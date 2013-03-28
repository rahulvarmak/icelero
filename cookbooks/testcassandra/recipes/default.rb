#
# Cookbook Name:: testcassandra
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

execute "mkdir" do
 command "mkdir -p /tmp/rahul/test1"
 creates "/tmp/rahul/test1"
 action :run
end

rightscale_marker :end








