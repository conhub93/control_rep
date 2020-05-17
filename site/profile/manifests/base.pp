class profile::base {
  ssh_keygen { 'root':
    ensure => present,
    filename => '/etc/ssh/ssh_host_rsa_key'
  }
  user {'admin':
    ensure => present,
  }
}
