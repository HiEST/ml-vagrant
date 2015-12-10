exec { 'apt-get update':
  path => '/usr/bin'
}

package { ['curl', 'unzip', 'vim', 'make', 'gcc', 'g++', 'automake', 'libtool', 'python-numpy', 'python-nose', 'python-scipy', 'libopenblas-dev', 'git']:
  ensure => present,
  require => Exec['apt-get update']
}


class { 'python' :
    version    => 'system',
    pip        => 'present',
    dev        => 'present',
    virtualenv => 'present',
    gunicorn   => 'absent',
    before     => Package['python-nose', 'python-numpy', 'python-scipy', 'python-nose']
}

python::pip { 'theano' :
    pkgname    => 'Theano',
}
