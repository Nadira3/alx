# automating config edit
# puppet_ssh_config.pp

# Define the SSH client configuration file path
$ssh_config_file = '/etc/ssh/ssh_config'

# Ensure SSH client configuration is set to use the private key ~/.ssh/school
file_line { 'Declare identity file':
  path   => $ssh_config_file,
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^#?\s*IdentityFile',
  ensure => present,
}

# Ensure SSH client configuration is set to refuse authentication using a password
file_line { 'Turn off passwd auth':
  path   => $ssh_config_file,
  line   => '    PasswordAuthentication no',
  match  => '^#?\s*PasswordAuthentication',
  ensure => present,
}

