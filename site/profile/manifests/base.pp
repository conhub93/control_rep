class profile::base {
  ssh_keygen { 'root':
    ensure => present,
    type => 'dsa',
  }
  user {'admin':
    ensure => present,
  }
}
