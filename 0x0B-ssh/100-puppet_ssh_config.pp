# Using Puppet to configure SSH Client

file_line { 'add_dentity_file':
  require => 'present',
  path    => '/etc/ssh/.ssh/config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^IdentityFile',
}

file_line { 'passwd_auth_no':
  require => 'present',
  path    => '/etc/ssh/.ssh/config',
  line    => 'PasswordAuthentication no',
  match   => '^PasswordAuthentication',
}
