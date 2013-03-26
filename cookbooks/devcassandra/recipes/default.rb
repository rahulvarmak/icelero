#
# Cookbook Name:: devcassandra
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

log "Installing Cassandra"

execute "apt-get" do
 command "apt-get update"
 action :run
end

execute "apt-get" do
 command "apt-get install openjdk-6-jdk"
 action :run
end


execute "apt-get" do
 command "apt-get install dsc12"
 action :run
end

execute "service" do
 command "service cassandra stop"
 action :run
end

execute "rm" do
 command "rm -rf /var/lib/cassandra/data/system/*"
 action :run
end

execute "service" do
 command "service cassandra start"
 action :run
end






rightscale_marker :end
