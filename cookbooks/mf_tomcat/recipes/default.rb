#
# Cookbook:: mf_tomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#include_recipe 'nginx::repo'

package 'nginx' do
	action :install
end

service 'nginx' do
	action [:enable, :start]
end


