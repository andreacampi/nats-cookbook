#
# Cookbook Name:: nats-server
# Recipe:: default
#
# Copyright 2012, Trotter Cashion
# Copyright 2012, ZephirWorks
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe 'cloudfoundry'

gem_binaries_path = ruby_bin_path(node['cloudfoundry']['ruby_1_9_2_version'])

rbenv_gem "nats" do
  ruby_version node['cloudfoundry']['ruby_1_9_2_version']
end

cloudfoundry_component "nats-server" do
  component_name "nats-server"
  pid_file     node['nats_server']['pid_file']
  log_file     node['nats_server']['log_file']
  bin_file     File.join(gem_binaries_path, "nats-server")
end
