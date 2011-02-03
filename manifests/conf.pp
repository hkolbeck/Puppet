##
# iSCSI initiator Module conf.pp
#
# Computer Action Team
# Maseeh College of Engineering and Computer Science
#

define iscsiinit::conf() {

  file { "/etc/iscsid/iscsid.conf" :
  }
}
