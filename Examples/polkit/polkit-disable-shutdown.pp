##
# Use PolicyKit to remove non-CATs' ability to shutdown machines.
#

polkit::policy { 'deny-them-poweroff' :
  priority => '20',
  key => 'edu.pdx.cat.power.them',
  groups => '*',
  actions => 'org.freedesktop.consolekit.*',
  result_active => 'no',
}

polkit::policy { 'allow-acat-poweroff' :
  priority => '21',
  key => 'edu.pdx.cat.power.acat',
  groups => 'acat',
  actions => 'org.freedesktop.consolekit.*',
  result_any => 'yes',
  result_active => 'yes',
  result_inactive => 'yes',
}
