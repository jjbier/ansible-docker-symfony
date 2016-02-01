# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrant configuration file, simplified from:
# https://github.com/pjan/the-ansibles/blob/master/contrib/vagrant/Vagrantfile

BOX_IMAGE = ENV['BOX_IMAGE'] || "ubuntu/trusty64"
BOX_VERSION = ENV['BOX_VERSION'] || "14.04"
BOX_IP_ZONE = ENV['BOX_IP_ZONE'] || "192.168.111"
BOX_FORWARDED_PORT = ENV['BOX_FORWARDED_PORT'] || 22

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Set up multiple servers for different services
  # NOTE: Make sure all IPs are on the same subnet, e.g. ip_end should always begin with 22

  # Insecure private key not working after vagrant upgrade
  # https://github.com/mitchellh/vagrant/issues/4967
  config.ssh.forward_agent = true
  config.ssh.insert_key = false

  config.vm.define "webserver" do |webserver|
    ip_end = "222"
    webserver.vm.box = BOX_IMAGE
    webserver.vm.network :private_network, ip: BOX_IP_ZONE + "." + ip_end
  end

  config.vm.define "dbserver" do |dbserver|
    ip_end = "223"
    dbserver.vm.box = BOX_IMAGE
    dbserver.vm.box_version = BOX_VERSION
    dbserver.vm.network :private_network, ip: BOX_IP_ZONE + "." + ip_end
  end
end