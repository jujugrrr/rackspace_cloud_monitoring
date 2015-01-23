if defined?(ChefSpec)
  # config
  def create_rackspace_cloud_monitoring_config(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_cloud_monitoring_config, :create, resource_name)
  end

  def delete_rackspace_cloud_monitoring_config(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_cloud_monitoring_config, :delete, resource_name)
  end

  # service
  def create_rackspace_cloud_monitoring_service(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_cloud_monitoring_service, :create, resource_name)
  end

  def delete_rackspace_cloud_monitoring_service(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:rackspace_cloud_monitoring_service, :delete, resource_name)
  end
end
