# Using Puppet to create a manifest that kills a process named killmenow

exec { 'kill':
  command => 'pkill -f killmenow',
  path    => ['/usr/bin', '/bin', '/usr/sbin', '/sbin'],
}
