##
# Allow locked boxes to be logged out after 24 hours.
#

gconf { "/apps/gnome-screensaver/logout_enabled" :
	  type => "bool",
	  value => "TRUE",
	  configsource => "xml:readwrite:/etc/gconf/gconf.xml.mandatory",
}

gconf { "/apps/gnome-screensaver/logout_delay" :
	  type => "int",
	  value => "1440", #24 Hours, in minutes
	  configsource => "xml:readwrite:/etc/gconf/gconf.xml.mandatory",
}

gconf { "/apps/gnome-screensaver/logout_command" :
	  type => "string",
	  value => "pkill -9 -u $USER",
	  configsource => "xml:readwrite:/etc/gconf/gconf.xml.mandatory"
}
