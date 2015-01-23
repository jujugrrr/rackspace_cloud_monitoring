shared_examples_for 'rackspace monitoring agent set up' do |platform|
  if %w(rhel).include? platform
    it 'adds yum repository providing rackspace-monitor-agent' do
      expect(chef_run).to add_yum_repository('monitoring')
    end
  else
    it 'adds apt repository providing rackspace-monitor-agent' do
      expect(chef_run).to add_apt_repository('monitoring')
    end
  end
  it 'installs rackspace-monitoring-agent package' do
    expect(chef_run).to install_package('rackspace-monitoring-agent')
  end
  it 'starts rackspace-monitoring-agent service' do
    expect(chef_run).to start_service('rackspace-monitoring-agent')
  end
  it 'enables rackspace-monitoring-agent service' do
    expect(chef_run).to enable_service('rackspace-monitoring-agent')
  end
  it 'creates required rackspace-monitoring-agent config directory' do
    expect(chef_run).to create_directory('/etc/rackspace-monitoring-agent.conf.d')
  end
  it 'executes rackspace-monitoring-agent setup script' do
    expect(chef_run).to run_execute('agent-setup-cloud').with(command: 'rackspace-monitoring-agent --setup --username dummyusername --apikey dummyapikey')
  end
end

shared_examples_for 'raise error about missing parameters' do
  it 'Runtime error' do
    expect { chef_run }.to raise_error(RuntimeError)
  end
end

