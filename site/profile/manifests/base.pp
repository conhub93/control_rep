class profile::base {
  ssh_keygen { 'root': 
    home => '/root'
  }
  user {'admin':
    ensure => present,
  }
}
