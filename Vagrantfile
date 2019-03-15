# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/centos-6.8"

  ip = "192.168.50.4"

  config.vm.network "private_network", ip: ip
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.become = true
      ansible.become_user = "root"
      ansible.host_key_checking = false
  end

end
