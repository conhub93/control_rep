class role::master_server {
  include profile::base
  include profile::agent_nodes
  ssh_authorized_key { 'web@web_server.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3Nza[...]qXfdaQ==',
  }
}
