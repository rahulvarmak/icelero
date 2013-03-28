#
# Cookbook Name:: testcassandra
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

cookbook_file "testfile" do
  path "/tmp"
end

rightscale_marker :end








