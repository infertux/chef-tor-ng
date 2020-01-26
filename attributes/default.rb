default['tor-ng']['torrc'] = {
  address: nil, # String, nil/false will autodetect
  contact_info: nil, # String, nil/false means none
  dir_port: false, # String|Bool, true means '9030'
  exit_policy: 'reject *:* # no exits allowed',
  nickname: nil, # String|Bool, nil/false means no nickname
  or_port: true, # Array|Bool, true means default IPv4+IPv6 on port 9001
  outbound_bind_address: nil, # String, nil/false will use default address
  relay_bandwidth_burst: nil, # Integer, in KB/s, nil means unlimited
  relay_bandwidth_rate: nil, # Integer, in KB/s, nil means unlimited
}
