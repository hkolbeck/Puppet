#!/bin/sh

#Generates the template for iscsid.conf, expects a default version on stdin,
#produces erb template on stdout
grep '=' | grep -v '*' | sed 's/^#\s*//; s/ =.*$//' | sort -u |\
perl -ne 'chomp; $orig = $_; s/[\[\]]//g; s/\./_/g;
print "<% if $_!= \"\" -%>\
$orig= <%= $_%>\
<% end -%>"'
