default['tor-ng']['torrc'] = {
  or_port: true, # Array|Bool, true means default IPv4+IPv6 on port 9001
  dir_port: false, # String|Bool, true means '9030'
  nickname: nil, # String|Bool, nil/false means no nickname
  exit_policy: 'reject *:* # no exits allowed',
}
