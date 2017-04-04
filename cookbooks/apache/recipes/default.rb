#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#Install httpd

#include_recipe "apt"

package_name = 'httpd'

if ubuntu.eql.?(node['platform'])
  package_name = 'apache2'
end

  package 'httpd' do
    action :install
  end

  # start httpd server
  service 'httpd' do
    action [:start, :enable]
  end
  
  file '/var/www/html/index.html' do
    content '<h1> This is deployed by Chef in apache 1 </h1>'
  end

