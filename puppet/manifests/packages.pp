exec { 'apt-get update':
  path => '/usr/bin'
}

package { ['curl', 'unzip', 'vim', 'make', 'gcc', 'g++', 'automake', 'libtool']:
  ensure => present,
  require => Exec['apt-get update']
}


