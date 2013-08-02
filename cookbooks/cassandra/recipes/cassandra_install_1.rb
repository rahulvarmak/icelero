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

execute "mv" do
 command "mv /etc/apt/sources.list.ORIG /etc/apt/sources.list"
 action :run
end



execute "touch" do
 command "touch /etc/apt/sources.list.d/cassandra.sources.list"
 action :run
end


execute "echo" do
 command "echo 'deb http://debian.datastax.com/community stable main' >> /etc/apt/sources.list.d/cassandra.sources.list"
 action :run
end

execute "curl" do
 command "curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -"
 action :run
end

execute "apt-get" do
 command "apt-get update"
 action :run
end

execute "apt-get" do
 command "apt-get install -y openjdk-6-jdk"
 action :run
end


execute "apt-get" do
 command "apt-get install -y dsc12"
 action :run
end

execute "service" do
 command "service cassandra stop"
 action :run
end

execute "mkdir" do
 command "mkdir -p /mnt/ephemeral/var/lib/"
 action :run
end

execute "cp" do
 command "cp -r /var/lib/cassandra/ /mnt/ephemeral/var/lib/"
 action :run
end

execute "chown" do
 command "chown -R cassandra:cassandra /mnt"
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
