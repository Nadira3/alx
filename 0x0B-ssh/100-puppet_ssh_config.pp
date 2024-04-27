# Define SSH client configuration file content
$file_content = @(CONTENT)
Host your_server
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
CONTENT

# Ensure SSH client configuration file exists and has the desired content
file { '/home/your_username/.ssh/config':
  ensure  => present,
  content => $file_content,
  owner   => 'u0_a171',
}

