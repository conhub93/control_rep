class profile::base {
  ssh_keygen { 'root': 
    home => '/root'
  }
  @@sshkey { $::hostname:
    type => dsa,
    key  => $::sshdsakey,
  }
  Sshkey <<| |>>
  
  user {'admin':
    ensure => present,
  }
}
