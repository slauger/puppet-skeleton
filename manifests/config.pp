# skeleton::config
#
# Class for package configuration
class skeleton::config {
  file { '/tmp/puppet-skeleton.file':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => "puppet:///modules/${module_name}/skeleton.file",
  }
  
  file { '/tmp/puppet-skeleton.epp':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => epp("${module_name}/skeleton.epp"),
  }
}
