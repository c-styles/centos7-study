#
# Cookbook Name:: mysql-setup
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

mysql_service 'default' do
  version '5.6'
  initial_root_password ''
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end
