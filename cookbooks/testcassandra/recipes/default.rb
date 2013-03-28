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
  source "opt/development/cookbooks/testcassandra/files/default/testfile" # this is the value that would be inferred from the path parameter
  mode "0644"
end

rightscale_marker :end








