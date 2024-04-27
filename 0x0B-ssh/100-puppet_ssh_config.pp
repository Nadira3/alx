# Define SSH client configuration file content
file { '/home/u0_a171/.ssh/config':
  ensure  => present,
  content => "\
Host <server_hostname_or_IP>
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
",
  owner   => 'u0_a171',
}
