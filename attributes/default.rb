#
# Cookbook Name:: nats
# Attributes:: default
#
# Copyright 2012, ZephirWorks
# Copyright 2012, Trotter Cashion
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

include_attribute "cloudfoundry"

# Version of the nats gem to install.
default['nats']['gem']['version'] = "0.4.28"

# Nats will bind to this host.
default['nats_server']['host']       = "0.0.0.0"

# Nats will bind to this port.
default['nats_server']['port']       = "4222"

# Clients will connect to nats as this user.
default['nats_server']['user']       = "nats"

# Clients will connect to nats with this password.
default['nats_server']['password']   = "nats"

# Where to write Nats's pid.
default['nats_server']['pid_file']   = File.join(node['cloudfoundry']['pid_dir'], "nats-server.pid")

# Where to write Nats's logs.
default['nats_server']['log_file']   = File.join(node['cloudfoundry']['log_dir'], "nats-server.log")

# Ruby version to use.
default['nats_server']['ruby_version'] = node['cloudfoundry']['ruby_1_9_2_version']
