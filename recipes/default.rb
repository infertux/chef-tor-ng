package 'tor'

template '/etc/tor/torrc' do
  owner 'root'
  group 'root'
  mode '0644'
  variables(torrc: node['tor-ng']['torrc'])
  notifies :restart, 'service[tor]'
end

service 'tor'
