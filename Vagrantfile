Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/debian-8.2-64-puppet"

  config.vm.provision :puppet do |puppet|
    puppet.environment_path = "environments"
    puppet.environment = "default"
  end
end
