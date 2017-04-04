##install httpd

# Default Package name is 'httpd'
package_name = 'httpd'

if ubuntu.eql.? (node['platform'])
  package_name = 'apache2'
end

package package_name do
  action :install
  
service package_name do
  action[:start , :enable]
end


  