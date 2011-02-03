##
# iSCSI initiator Module name.pp
#
# Computer Action Team
# Maseeh College of Engineering and Computer Science
#

define iscsiinit::name() {

  file { "/etc/iscsid/initiatorname.iscsi" :
  }
}
