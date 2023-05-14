file { '/var/www/html/wp-settings.php':
  ensure => 'file',
}

exec { 'fix-wordpress':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => ['/usr/local/bin', '/bin'],
  require => File['/var/www/html/wp-settings.php'],
}