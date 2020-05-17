class profile::ssh {
	package {'openssh-server':
		ensure => present,
	}
	service {'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
	  ensure => present,
	  user   => 'root',
	  type   => 'ssh-rsa',
	  key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEqJq1/9sh3nRow+KX891VqzYsvK9/ZfV82TBEq0d78kajwzcCHcTQDImOqj41dfC2rP/T8UIaT1FzRO4rE2E47EU3VNWLeKkTT9nlvleauzvnRsiqYR9c+BiSauvy377IrzOUxqe5Xm1cCsPKa7biodcu9yGlRxEMZ93A1uTUc9wJydgnA3fqxfUTL/EWIwvZVMCcGw2KJquCiahtVLXy25JxrgolB/vGAodsdMw70cxglKY8irMf/HhoWa015GtiHhmDZJ3KyiucnFHHAdyjJdv1odS4h3L+B/6Q2kxML6wc2Q1b3Oyp5bzXZkM1mr8JZYFk0XLLcWToAGVEpU1B root@master.puppet.vm',
	}
}
