node default {
  file { '/root/README.md':
     ensure => file,
     owner => 'root',
     content => "This is the README.md file",
   }
}
