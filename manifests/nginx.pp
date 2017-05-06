 class profile::nginx (
   Array $vhosts,
 ){
  include ::nginx
  
  $vhosts.each | $vhost | {
    #::nginx::vhost { $facts['fqdn']:
    ::nginx::vhost { $vhost['fqdn']:
      port           => $vhost['port'],
      server_aliases => $vhost['server_aliases'],
     }
  }
}
