class profile::base {
  include ::ssh
  user {'admin':
    ensure => present,
  }
  Ssh::Config_entry {
    ensure => present,
    path => '/root/.ssh/config',
    owner => 'root',
    group => 'root',
  }
}
