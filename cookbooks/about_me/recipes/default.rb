#
# Cookbook Name:: about_me
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rightscale_marker :begin

  first_name = node[:about_me][:first_name]
  food = node[:about_me][:favorite][:food]
  drink = node[:about_me][:favorite][:drink]
  hobby = node[:about_me][:favorite][:hobby]
  
  log "Hi, my name is #{first_name} and I like #{food}, #{drink} and #{hobby}."

execute "mkdir" do
 command "mkdir -p /tmp/rahul/test"
 creates "/tmp/rahul/test"
 action :run
end
  
rightscale_marker :end
