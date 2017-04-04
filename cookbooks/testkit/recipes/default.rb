#
# Cookbook:: testkit
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file '/opt/testkitchenfile' do
  action :create
  content 'My  shell test kitchen file'
  mode '0755'
  owner 'vagrant'
  group 'vagrant'
end