#
# Cookbook:: build_cookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'delivery-truck::default'

execute 'chef gem list' do
    command 'chef gem list'
    live_stream true
end

chef_gem 'spork' do
    action :install
end

chef_gem 'rspec' do
    action :install
    version '2.99.0'
end