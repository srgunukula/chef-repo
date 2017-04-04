#
# Cookbook:: wardeploy
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
  service 'tomcat' do
    action [ :stop ]
  end

  cookbook_file '/opt/tomcat9/webapps/sample.war' do
    source 'SimpleTomcatWebApp-1.0-SNAPSHOT.war'
  end
  service 'tomcat' do
    action [ :enable, :start  ]
  end
