node default {
  file { '/root/README.md':
     ensure => file,
     owner => 'Vagrant',
     content => "This is the README.md file",
   }
}
