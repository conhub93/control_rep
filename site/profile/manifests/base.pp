class profile::base {
  include ::ssh
  user {'admin':
    ensure => present,
  }
}
