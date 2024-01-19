# Puppet manifest to install Flask version 2.1.0
# Ensure the package resource type is available
include apt
#	Install Flask using pip3
package { 'python3-pip':
  ensure => 'installed',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => ['/usr/bin'],
  require => Package['python3-pip'],
}

# Validate Flask installation
exec { 'validate_flask_version':
  command => '/usr/bin/flask --version',
  path    => ['/usr/bin'],
  require => Exec['install_flask'],
}

