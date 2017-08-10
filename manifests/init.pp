# skeleton
#
# Main class, includes all other classes.
class skeleton (
  $package_name   = $skeleton::params::package_name,
  $package_ensure = $skeleton::params::package_ensure,
  $service_ensure = $skeleton::params::$service_ensure,
  $service_enable = $skeleton::params::service_enable,
) inherits skeleton::params {
  validate_string($package_name)
  validate_string($package_ensure)
  validate_re($service_ensure, [ 'stopped', 'running' ]
  validate_bool($service_enable)

  contain skeleton::package
  contain skeleton::config
  contain skeleton::service
  
  Class['::skeleton::package'] ->
  Class['::skeleton::config'] ~>
  Class['::skeleton::service']
}
