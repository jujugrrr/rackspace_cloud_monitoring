# comments!

rackspace_cloud_monitoring_service 'default' do
  cloud_credentials_username node['rackspace_cloud_monitoring']['cloud_credentials_username']
  cloud_credentials_api_key node['rackspace_cloud_monitoring']['cloud_credentials_api_key']
  action [:create, :start]
end
