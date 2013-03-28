#
# Cookbook Name:: testcassandra
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

cookbook_file "/tmp/testfile" do
  path "/files/default"
  action :create_if_missing
end

rightscale_marker :end








