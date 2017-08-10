# skeleton::params
#
# Class for default params, inherited by skeleton
class skeleton::params {
  $package_name   = 'skeleton'
  $package_ensure = 'present'
  $service_ensure = 'running'
  $service_enable = true
}
