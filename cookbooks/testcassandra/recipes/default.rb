#
# Cookbook Name:: testcassandra
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

execute "mv" do
 command "mv test testnew"
 creates "/tmp/testnew"
 action :run
end


execute "echo" do
 command "echo 'rahul.new' >> testnew"
 action :run
end



rightscale_marker :end








