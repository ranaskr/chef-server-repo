#
# Cookbook Name:: highavbl
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
node.default['haproxy']['members'] = [{
    'hostname' => 'web1', # these values come from the Vagrantfile
    'ipaddress' => '192.168.10.43', # or the public IP and hostname is using a cloud provider
    'port' => 80,
    'ssl_port' => 80
    },{
    'hostname' => 'web2', # these values come from the Vagrantfile
    'ipaddress' => '192.168.10.44', # or the public IP and hostname is using a cloud provider
    'port' => 80,
    'ssl_port' => 80
    }
]

include_recipe 'haproxy::manual'
