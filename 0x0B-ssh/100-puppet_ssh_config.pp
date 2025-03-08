# This Puppet script configures the /etc/ssh/ssh_config file as required.

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => "
Host server01
    HostName 18.204.215.41
    IdentityFile ~/.ssh/school
    User ubuntu
    PasswordAuthentication no
",
}
