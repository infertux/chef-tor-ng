default['tor-ng']['torrc'] = {
  or_port: true, # Array|Bool, true means default IPv4+IPv6 on port 9001
  dir_port: false, # String|Bool, true means '9030'
  nickname: nil, # String|Bool, nil/false means no nickname
  contact_info: nil, # String, nil/false means none
  exit_policy: 'reject *:* # no exits allowed',
  relay_bandwidth_rate: nil, # Integer, in KB/s, nil means unlimited
  relay_bandwidth_burst: nil, # Integer, in KB/s, nil means unlimited
}
