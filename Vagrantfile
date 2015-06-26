# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/centos-6.5"

  ip = "192.168.50.4"

  config.vm.network "private_network", ip: ip
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.sudo = true
      ansible.host_key_checking = false
      ansible.verbose =  'vvvv'
      ansible.extra_vars = { ansible_ssh_user: 'vagrant',
                   ansible_ssh_pass: 'vagrant',
                   ansible_connection: 'ssh'}
  end

end
