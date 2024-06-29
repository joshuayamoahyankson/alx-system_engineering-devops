# Using Puppet to install flask from pip3

exec { 'install_pip':
  command => 'apt-get update && apt-get install -y python3-pip',
  path    => ['/usr/bin', '/bin'],
  unless  => 'which pip3',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin', '/bin'],
  unless  => '/usr/bin/pip3 show flask | grep Version | grep 2.1.0',
  require => Exec['install_pip'],
}

exec { 'install_werkzeug':
  command => '/usr/bin/pip3 install werkzeug==2.1.1',
  path    => ['/usr/bin', '/bin'],
  unless  => '/usr/bin/pip3 show werkzeug | grep Version | grep 2.1.1',
  require => Exec['install_pip'],
}

exec { 'create_symlink_for_flask':
  command => 'ln -sf /usr/local/bin/flask /usr/bin/flask',
  path    => ['/usr/bin', '/bin'],
  unless  => 'test -L /usr/bin/flask',
  require => Exec['install_flask'],
}

exec { 'check_versions':
  command => 'python3 --version && /usr/bin/flask --version && pip3 show werkzeug | grep Version',
  path    => ['/usr/bin', '/bin'],
  require => [Exec['install_flask'], Exec['install_werkzeug'], Exec['create_symlink_for_flask']],
}
