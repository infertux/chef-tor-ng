default['tor-ng']['torrc'] = {
  or_port: '9001',
  dir_port: false, # default is '9030'
  nickname: nil,
  exit_policy: 'reject *:* # no exits allowed',
}
