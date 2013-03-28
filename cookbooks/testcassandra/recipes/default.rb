#
# Cookbook Name:: testcassandra
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin


execute "echo" do
 command "echo 'deb http://debian.datastax.com/community stable main' >> testnew"
 action :run
end


execute "curl" do
 command "curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -"
 action :run
end





rightscale_marker :end








