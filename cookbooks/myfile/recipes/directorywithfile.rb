 # to converge the default cookbook
#include_recipe 'myfile::default'

# Using chef create a directory 

  directory  '/opt/javahome' do
    action :create
    owner 'vagrant'
    group 'vagrant'
    mode '0755'
    
  end
  
# In the directory create a file, in the file write some content.  

  file 'createfile' do
    path  '/opt/javahome/welcome.sh'
    action :create
    owner 'vagrant'
    group 'vagrant'
    mode '0666'
    content ' This content is added by Chef  ! '
  end
  