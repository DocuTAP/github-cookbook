#
# Cookbook:: build_cookbook
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
include_recipe 'delivery-truck::default'

chef_gem 'spork' do
    action :install
end

chef_gem 'rspec' do
    action :install
    version '2.99.0'
end