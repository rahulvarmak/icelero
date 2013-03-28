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

execute "apt-get" do
 command "apt-get install -y openjdk-6-jdk"
 action :run
end

#execute "apt-get" do
# command "apt-get install -y dsc12"
# action :run
#end


  
rightscale_marker :end
