Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/debian-8.2-64-puppet"

  config.vm.synced_folder "c:\\dev\\src", "/home/vagrant/src", owner: "vagrant", group: "vagrant"

  config.vm.provision  :puppet do |puppet|
    puppet.environment_path = "environments"
    puppet.environment = "production"
  end
end
