file { '/home/vagrant/downloads/':
  ensure => 'directory',
}


file { '/opt/applications':
  ensure => 'directory',
  owner  => 'vagrant',
  group  => 'vagrant',
}

file { '/data':
         ensure => directory,
}

