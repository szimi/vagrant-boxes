Vagrant.configure("2") do |config|

  # IP Address Base for private network

  ipAddrPrefix = "192.168.56.10"


  # Define Number of RAM for each node

  config.vm.provider "virtualbox" do |v|

    v.customize ["modifyvm", :id, "--memory", 1024]

  end


  # Provision the server itself with puppet

  config.vm.provision :puppet


  # Download the initial box from this url

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"


  # Provision Config for each of the nodes
  config.vm.define "Couchbase" do |node|

    node.vm.box = "precise64"

    node.vm.network :private_network, ip: ipAddrPrefix

    node.vm.provider "virtualbox" do |v|

    v.name = "Couchbase Server Node "

  end

end

end