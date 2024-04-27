# automating config edit
$user_home = $facts['homedir']
$user_name = $facts['id']
$user_group = $facts['group']

file { "${user_home}/.ssh/config":
  ensure  => present,
  content => "\
Host 54.197.95.192
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
",
  owner   => $user_name,
  group   => $user_group,
  mode    => '0600',
}

