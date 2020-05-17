node default {
  file { '/root/README.md':
     ensure => file,
     content => "This is the README.md file"
   }
}
