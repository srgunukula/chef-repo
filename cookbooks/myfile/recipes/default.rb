#
# Cookbook:: myfile
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

directory '/home/vagrant/cheffolder' do
  action :create
  mode '0755'
  owner 'vagrant'
  group 'vagrant'
end

file '/home/vagrant/cheffolder/myfiledefault.sh' do
  action :create
  content 'My  shell default file'
  mode '0755'
  owner 'vagrant'
  group 'vagrant'
end
