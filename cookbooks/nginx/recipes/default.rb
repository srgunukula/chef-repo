#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe "apt"

  package 'epel-release' do
    action :install
  end
  package 'nginx' do
    action :install
  end
  cookbook_file '/etc/nginx/nginx.conf' do
    source 'nginx.conf'
  end
  service 'nginx' do
    action [ :start, :enable ]
  end

 #Between =begin and =end, every thing gets commented

=begin  
  directory  '/usr/share/nginx/www' do
    action :create
    owner 'vagrant'
    group 'vagrant'
    mode '0664'
  end
  cookbook_file "/usr/share/nginx/www/index.html" do
    source "index.html"
    mode "0644"
  end 
=end