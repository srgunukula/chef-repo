#
# Cookbook:: Idli
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

file '/home/vagrant/Idli.txt' do
  content 'Converging together with other recipe...'
  mode '0755'
  owner 'vagrant'
  group 'vagrant'
  action :create
end