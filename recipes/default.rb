#
# Cookbook Name:: fluffy-psychic-spork
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

execute 'hello' do
  command 'echo hello'
end

package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start ]
end

rbenv_ruby "2.3.1"

rbenv_gem "bundler" do
  ruby_version "2.3.1"
end

group node['fluffy']['group'] do
  group_name node['fluffy']['group']
  gid node['fluffy']['gid'] if node['fluffy']['gid']
  system true
  action :create
end

user node['fluffy']['user'] do
  comment "#{node['fluffy']['user']} user"
  uid node['fluffy']['uid'] if node['fluffy']['uid']
  group node['fluffy']['group']
  home node['fluffy']['dir']
  shell '/bin/false'
  password 'nil'
  supports :manage_home => true
  system true
  action [ :create, :manage ]
end

directory node['fluffy']['dir'] do
  owner node['fluffy']['user']
  group node['fluffy']['group']
  mode 755
  action :create
end
