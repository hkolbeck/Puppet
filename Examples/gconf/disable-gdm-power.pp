##
# Disable power menu and user list in gdm login screen.
#

gconf { "/apps/gdm/simple-greeter/disable_restart_buttons" :
	  type => "bool",
	  value => "TRUE",
	  configsource => "xml:readwrite:/etc/gconf/gconf.xml.mandatory",
}

gconf { "/apps/gdm/simple-greeter/disable_user_list" :
	  type => "bool",
	  value => "TRUE",
	  configsource => "xml:readwrite:/etc/gconf/gconf.xml.mandatory",
}