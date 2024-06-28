# Using Puppet to create a manifest that kills a process named killmenow
exec { 'kill_killmenow_process':
  command     => 'pkill -f killmenow',
  refreshonly => true,
  onlyif      => 'pgrep -f killmenow',
  path        => ['/usr/bin', '/bin', '/usr/sbin', '/sbin'],
}
