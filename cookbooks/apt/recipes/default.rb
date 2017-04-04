#
# Cookbook Name:: apt
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

  execute "yum update" do
    command "sudo yum update -y && sudo yum upgrade -y"
  end