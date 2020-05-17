class profile::base {
  ssh_keygen { 'root': }
  user {'admin':
    ensure => present,
  }
}
