#
# Cookbook:: helloworld
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
  directory  '/opt/tomcat9/webapps/helloworld' do
    action :create
    owner 'tomcat'
    group 'tomcat'
    mode '0755'
    
  end
  cookbook_file '/opt/tomcat9/webapps/helloworld/index.html' do
    source 'index.html'
  end
