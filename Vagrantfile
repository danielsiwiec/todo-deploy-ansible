# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/centos-6.8"

  config.vm.network "forwarded_port", guest: 8080, host: 80

  config.vm.provision "ansible" do |ansible|
      ansible.compatibility_mode = "2.0"
      ansible.playbook = "playbook.yml"
      ansible.become = true
      ansible.become_user = "root"
      ansible.host_key_checking = false
  end

end
