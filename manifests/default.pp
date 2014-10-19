exec { "couchbase-server-source": 

  command => "/usr/bin/wget http://packages.couchbase.com/releases/3.0.0/couchbase-server-enterprise_3.0.0-ubuntu12.04_amd64.deb",

  cwd => "/home/vagrant/",

  creates => "/home/vagrant/couchbase-server-enterprise_3.0.0-ubuntu12.04_amd64.deb",

  before => Package['couchbase-server']

}


exec { "install-deps":

  command => "/usr/bin/apt-get install libssl0.9.8",

  before => Package['couchbase-server']

}


package { "couchbase-server":

  provider => dpkg,

  ensure => installed,

  source => "/home/vagrant/couchbase-server-enterprise_3.0.0-ubuntu12.04_amd64.deb"

}
