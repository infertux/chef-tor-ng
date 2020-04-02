package 'tor'

service 'tor'

template '/etc/tor/torrc' do
  owner 'root'
  group 'root'
  mode '0644'
  variables(torrc: node['tor-ng']['torrc'])
  notifies :restart, 'service[tor]'
end

node['tor-ng']['torrc']['onion_services'].each do |id, service|
  directory "/var/lib/tor/#{id}" do
    not_if { service['hostname'].nil? }
    notifies :restart, 'service[tor]'
    owner node['tor-ng']['user']
    group node['tor-ng']['group']
    mode '02700'
  end

  %w(hostname hs_ed25519_public_key hs_ed25519_secret_key).each do |filename|
    body = service[filename]
    if body
      case filename
      when 'hostname' then body += "\n" # file should end with a new line
      else body = Base64.strict_decode64(body) # decode base64-encoded attributes
      end
    end

    file "/var/lib/tor/#{id}/#{filename}" do
      not_if { body.nil? }
      notifies :restart, 'service[tor]'
      owner node['tor-ng']['user']
      group node['tor-ng']['group']
      mode '0600'
      content body
    end
  end
end
