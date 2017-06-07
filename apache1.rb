#Install httpd

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

