#######################################
# Create Developer account
#######################################
user { 'dev':
  ensure     => present,
  password   => '$6$dPp8BPqDC0O1NL$cMhWP7ddwpfZTQJ1hFy8zqhi3o71W1QvXFsYybl4Vsc2r4qN7twOCoxHqHmAs7OhE/wkgbk5AaQoBMq8qF41C/', # condement
  managehome => true,
  shell      => '/bin/bash',
  groups     => ['adm', 'sudo']
}

#######################################
# Install VirtualBox Guest Additions
#######################################
package { 'virtualbox-guest-dkms':
  ensure => present
}

package { 'virtualbox-guest-utils':
  ensure => present
}

package { 'virtualbox-guest-x11':
  ensure => present
}

#######################################
# Install useful standard software
#######################################
package { 'curl':
  ensure => present
}
