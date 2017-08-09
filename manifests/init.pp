# skeleton
#
# Main class, includes all other classes.
class skeleton (
  String $package_name,
  String $package_ensure,
  Enum['running', 'stopped'] $service_ensure,
  Bool $service_enable,
) {
  contain skeleton::package
  contain skeleton::config
  contain skeleton::service
  
  Class['::skeleton::package'] ->
  Class['::skeleton::config'] ~>
  Class['::skeleton::service']
}
