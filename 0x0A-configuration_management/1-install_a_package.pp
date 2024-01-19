# 1-install_a_package.pp
# install Flask from pip3 with a specific version using puppet manifest.

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}
