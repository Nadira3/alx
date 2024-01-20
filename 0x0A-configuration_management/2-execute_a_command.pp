exec { 'killmenow':
  command     => '/usr/bin/pkill killmenow',
  refreshonly => true,
}

