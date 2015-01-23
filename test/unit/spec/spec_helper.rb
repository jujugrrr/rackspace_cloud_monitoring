require 'chefspec'
require 'chefspec/berkshelf'

def stub_resources
  allow(File).to receive(:size?).with('/etc/rackspace-monitoring-agent.cfg').and_return(nil)
end

at_exit { ChefSpec::Coverage.report! }
