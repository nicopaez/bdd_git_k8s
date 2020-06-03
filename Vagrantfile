# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "nicopaez/rubykatas"
  config.vm.box_version = "20201"

  config.vm.network 'forwarded_port', guest: 4567, host: 4567
  config.vm.hostname = 'gitk8s'
  config.vm.provider 'virtualbox' do |vb|
    vb.memory = '1024'
    vb.name = config.vm.hostname
  end

end
