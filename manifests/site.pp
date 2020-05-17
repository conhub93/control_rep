node default {
  file { '/root/README.md':
     ensure => file,
     owner => 'user_does_not_exist',
     content => "I want this to throw an error so I know if node master.puppet.vm does not exist",
   }
}
node 'master.puppet.vmm' {
  include role::master_server
}
