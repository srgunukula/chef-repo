#
# Cookbook:: PHP
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


  package "php" do
    action :install
  end
=begin
  execute "PHP install" do
    command "sudo yum install php -y"
  end
=end
  execute "PHP-pear install" do
    command "sudo yum install php-pear -y"
  end
  service 'httpd' do
    action [:reload, :enable]
  end

