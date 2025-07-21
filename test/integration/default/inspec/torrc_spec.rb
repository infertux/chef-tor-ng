control 'torrc-1' do
  title 'torrc is configured properly'
  impact 1.0

  describe file('/etc/tor/torrc') do
    it { should be_file }
    its('content') { should match(/^ExitPolicy reject \*:\*/) }
    its('content') { should include 'HiddenServiceDir /var/lib/tor/testservice' }
    its('content') { should include 'HiddenServicePort 80 127.0.0.1:80' }
  end

  describe file('/var/lib/tor/testservice/hostname') do
    it { should be_file }
    its('owner') { should eq 'debian-tor' }
    its('group') { should eq 'debian-tor' }
    its('content') { should match(/.*\.onion$/) }
  end
end
