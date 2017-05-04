class profile::apache1 {
  
class { '::apache':
    default_vhost => true,
  }

  $docroot = "/var/www/${facts['fqdn']}"

  ::apache::vhost { $facts['fqdn']:
    port    => 80,
    docroot => $docroot,
    before  => File["${docroot}/index.html"],
  }

  file {  "${docroot}/index.html":
    content => "Test pageThis is a test",
  }
}
