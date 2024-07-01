# Using Puppet to configure SSH Client

file { '/home/joshuayankson/.ssh':
  ensure => 'directory',
  owner  => 'joshuayankson',
  group  => 'joshuayankson',
  mode   => '0700',
}

file { '/home/joshuayankson/.ssh/config':
  ensure  => 'file',
  owner   => 'joshuayankson',
  group   => 'joshuayankson',
  mode    => '0600',
  require => File['/home/joshuayankson/.ssh'],
}

file_line { 'add_dentity_file':
  path    => '/home/joshuayankson/.ssh/config',
  line    => 'IdentityFile ~./ssh/school',
  match   => '^IdentityFile',
  require => File['/home/joshuayankson/.ssh/config'],
}

file_line { 'passwd_auth_no':
  path    => '/home/joshuayankson/.ssh/config',
  line    => 'PasswordAuthentication no',
  match   => '^PasswordAuthentication',
  require => File['/home/joshuayankson/.ssh/config'],
}
