#
# Cookbook:: apacheserver
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
# This cookbook is not supported on ubuntu so failing for other platformm.
raise "This cookbook is not supported on #{platform}" if node['platform'] != 'ubuntu'

include_recipe 'apacheserver::installapache' 
include_recipe 'apacheserver::installmysql'