default['tor-ng']['torrc'] = {
  user: 'debian-tor', # String # FIXME: detect distro
  group: 'debian-tor', # String # FIXME: detect distro
  address: nil, # String, nil/false will autodetect
  contact_info: nil, # String, nil/false means none
  dir_port: false, # String|Bool, true means '9030'
  exit_policy: 'reject *:* # no exits allowed',
  nickname: nil, # String|Bool, nil/false means no nickname
  or_port: true, # Array|Bool, true means default IPv4+IPv6 on port 9001
  outbound_bind_address: nil, # String, nil/false will use default address
  relay_bandwidth_burst: nil, # Integer, in KB/s, nil means unlimited
  relay_bandwidth_rate: nil, # Integer, in KB/s, nil means unlimited
  onion_services: {
    # Example Onion Service definitions are provided below:
    #
    # 'id' => {
    #   port: '80 127.0.0.1:80', # String|Array, required
    #   # auto generate hostname and keys
    # },
    # 'foobar' => {
    #   port: ['22 127.0.0.1:22', '6667 10.0.0.1:6667'], # String|Array, required
    #   hostname: 'blah1234.onion',
    #   hs_ed25519_public_key: 'base64-encoded key',
    #   hs_ed25519_secret_key: 'base64-encoded key',
    # },
    # NOTE: base64 keys can be generated with `base64 -w 0 hs_ed25519_{public,secret}_key`
  },
}
