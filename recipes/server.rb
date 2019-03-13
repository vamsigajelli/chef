#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2019 The Authors, All Rights Reserved

package 'httpd' do
action :install
end

file '/var/www/html/index.html' do
content "<h1>hello world!</h1>
HOSTNAME: #{node['hostname']}
IPaddress: #{node['ipaddress']}
CPU: #{node['cpu']['0']['mhz']}
MEMORY: #{node['memory']['total']}
"
end

service 'httpd' do
action [ :enable, :start ]
end
