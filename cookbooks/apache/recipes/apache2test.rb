#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#Install httpd


  file '/var/www/html/index.html' do
    content '<h1> This is deployed by Chef in apache 2 </h1>'
  end

