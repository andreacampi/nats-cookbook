if node['platform_version'].to_f <= 10.04
  Chef::Log.info "nats::client is not supported on this system"
else
  package "ruby1.9.3"
end
