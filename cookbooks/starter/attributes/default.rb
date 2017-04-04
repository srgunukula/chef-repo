# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Set a default name
#default["starter_name"] = "Sam Doe"

# For further information, see the Chef documentation (https://docs.chef.io/essentials_cookbook_attribute_files.html).


default['apache']['version'] = '2.0.1'
default['apache']['port'] = '80'


package package_name do
  version node['apache']['version']
  action :install
end
