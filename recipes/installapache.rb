#
# Cookbook:: .
# Recipe:: installapache
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package_name = node['apacheserver']['package_name']

package node['packageservice']['package_name'] do 
    action :install
    end

service node['packageservice']['package_name'] do
  action :enable
end

file '/var/www/html/index.html' do
   content 'this is a test page from chef'
   mode '0755'
   action :create
   #notifies :restart, "Service[#{package_name}]"
end

