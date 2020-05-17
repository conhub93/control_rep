class role::master_server {
  include profile::base
  include profile::agent_nodes
  class ssh {
  # Declare:
  @@sshkey { $::hostname:
    type => dsa,
    key  => $::sshdsakey,
  }
  # Collect:
  Sshkey <<| |>>
		   }

}
