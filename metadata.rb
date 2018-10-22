name             'tor-ng'
maintainer       'Cédric Félizard'
maintainer_email 'cedric@felizard.fr'
license          'MIT'
description      'Installs Tor'
source_url       'https://github.com/infertux/chef-tor-ng'
issues_url       'https://github.com/infertux/chef-tor-ng/issues'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'
chef_version     '>= 14'

supports 'debian', '>= 9.5'
