<?php
##
## database access settings in php format
## automatically generated from /etc/dbconfig-common/postfixadmin.conf
## by /usr/sbin/dbconfig-generate-include
## Sun, 02 Feb 2014 10:34:12 +0100
##
## by default this file is managed via ucf, so you shouldn't have to
## worry about manual changes being silently discarded.  *however*,
## you'll probably also want to edit the configuration file mentioned
## above too.
##
$dbuser='postfix';
$dbpass='{{ dbpassword.stdout }}';
}
}
$basepath='';
$dbname='postfix';
$dbserver='';
$dbport='';
$dbtype='mysql';
