#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2019 The Authors, All Rights Reserved

package 'httpd' do
action :install
end

remote_file 'var/www/html/vamsi.jpg' do
source 'https://upload.wikimedia.org/wikipedia/commons/1/12/VIRAT_KOHLI_JAN_2015_%28cropped%29.jpg'
end

template '/var/www/html/index.html' do
source 'index.html.erb'
action :create
end

service 'httpd' do
action [ :enable, :start ]
end
