node default {
  file { '/root/README.md':
     ensure => file,
     owner => 'nodes_do_not_exist',
     content => "I want this to throw an error so I know if node master.puppet.vm does not exist",
   }
}
node 'master.puppet.vm' {
  include role::master_server
}

node /^db/ {
  include role::db_server
}

node /^web/ {
  include role::web_server
}
