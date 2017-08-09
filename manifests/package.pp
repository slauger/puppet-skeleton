# skeleton::package
#
# Class for package installation
class skeleton::package {
  package { $skeleton::package_name:
    ensure => $skeleton::package_ensure,
  }
}
