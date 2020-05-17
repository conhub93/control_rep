class profile::ssh {
	package {'openssh-server':
		ensure => present,
	}
	service {'sshd':
		ensure => 'running',
		enabled => true,
	}
 	# Declare:
	@@sshkey { $::hostname:
		type => dsa,
		key  => $::sshdsakey,
	}
	# Collect:
	Sshkey <<| |>>
	
}
