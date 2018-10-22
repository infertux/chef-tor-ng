control 'torrc-1' do
  title 'torrc is configured properly'
  impact 1.0

  describe file('/etc/tor/torrc') do
    it { should be_file }
    its('content') { should match(/^ExitPolicy reject \*:\*/) }
  end
end
