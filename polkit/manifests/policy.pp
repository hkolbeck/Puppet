##
# Polkit Module policy.pp
#
# Computer Action Team
# Maseeh College of Engineering and Computer Science
#

##
# Define for a polkit policy file

#TODO: Error catching.

define polkit::policy (
  $priority,
  $key,
  $dir = "20-org.d",
  $users = "",
  $groups = "",
  $actions,
  $result_active = "",
  $result_inactive = "",
  $result_any = "",
  $ensure = "present"
  ) {
  
  file {
    "/etc/polkit-1/localauthority/${dir}/${priority}-${key}.pkla" :
  	  content => template("pkla.erb"),
      ensure => $ensure,
      owner => root,
      group => root,
      mode => 0644,
  }
}
