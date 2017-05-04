#class profile::apache(
#  Boolean $default_vhost = false,
#  Integer $port = 80,
#  String $docroot = '/var/www/test',
#){

#class { '::apache':
#  default_vhost =>  $default_vhost,
#}
#
#::apache::vhost { 'c7pupn1.smtrlab.com':
#  port    => $port,
#  docroot => $docroot,
#  }
#}

class profile::apache(
  Boolean $default_vhost = false,
  Integer $port =80,
  String $docroot = '/var/www/test',

){

  class { '::apache':
    default_vhost => $default_vhost,
  }

  ::apache::vhost { 'ubt14pupn2.smtrlab.com':
    port    => $port,
    docroot => $docroot,
  }
}

