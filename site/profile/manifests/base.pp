class profile::base {
  ssh_keygen { 'root': 
    home => '/root'
  }
  file { '/etc/ssh/ssh_known_hosts':
    ensure => file,
    owner  => root,
    group  => root,
    mode   => '0644',
    before => Sshkey[ "${::fqdn}_rsa", "${::fqdn}_dsa" ],
  }
  @@sshkey { "${::fqdn}_rsa":
    ensure       => present,
    key          => $::sshrsakey,
    type         => rsa,
  }
  @@sshkey { "${::fqdn}_dsa":
    ensure       => present,
    key          => $::sshdsakey,
    type         => dsa,
  }
  Sshkey <<| |>>

   user {'admin':
    ensure => present,
  }
}
