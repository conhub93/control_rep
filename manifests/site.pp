node default {
  file { '/root/README.md':
     ensure => file,
     owner => 'root',
     content => "This is the README.md file",
   }
}
node 'master.puppet.vm' {
  include role::master_server
}
