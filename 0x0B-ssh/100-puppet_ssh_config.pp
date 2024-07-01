# Using Puppet to configure SSH Client

file { '/etc/ssh/.ssh':
  ensure => 'directory',
  owner  => 'joshuayankson',
  group  => 'joshuayankson',
  mode   => '0700',
}

file { '/etc/ssh/.ssh/config':
  ensure  => 'file',
  owner   => 'joshuayankson',
  group   => 'joshuayankson',
  mode    => '0600',
  require => File['/etc/ssh/.ssh'],
}

file_line { 'add_dentity_file':
  path    => '/etc/ssh/.ssh/config',
  line    => 'IdentityFile ~/.ssh/school',
  match   => '^IdentityFile',
  require => File['/etc/ssh/.ssh/config'],
}

file_line { 'passwd_auth_no':
  path    => '/etc/ssh/.ssh/config',
  line    => 'PasswordAuthentication no',
  match   => '^PasswordAuthentication',
  require => File['/etc/ssh/.ssh/config'],
}
