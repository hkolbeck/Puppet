##
# iSCSI initiator Module connect.pp
#
# Computer Action Team
# Maseeh College of Engineering and Computer Science
#

define iscsi::connect(
  $target,
  $ip,
  $port = "3260",
  $discovertype = "st"
  ) {
  
  exec { "connect to target:$target at $ip:$port" : 
    command => "iscsiadm -m node -T $target -p $ip:$port --login",
    path => "/bin:/usr/bin:/sbin:/usr/sbin",
    unless => "iscsiadm -m session | grep '$target'"
  }
}

