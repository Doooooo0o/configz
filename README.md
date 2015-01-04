configz
=======

Yet another ansible's playbook repository

roles
======

* Common
 * provides **common** configuration
 * https://github.com/nojhan/liquidprompt <3
* Wallabag
 * provides **Wallabag** configuration
 * Imported with <3 from https://github.com/al3x/sovereign/
 * **Not yet READY**
* Prosody
 * Provides XMPP (Jabber) server
 * Imported with <3 from https://github.com/al3x/sovereign/
 * **Not yet READY**
* IRCBouncer
 * Provides a ZNC Config
 * Imported with <3 from https://github.com/al3x/sovereign/
 * **Not yet READY**
* Mail
 * provides a complete **mail** server for a given domain name and the vdomain capability for other domains.
 * **Note** : This role starts in order : common, mariadb, and mail. If you don't want one of them, please comment out.
 * **Note2** : If you already have a SQL server, **it wont erase the original config**, but it needs a ``~/.my.cnf``.
 * **TODO** : 
     * Razor/Pyzor
     * Roundcube
     * Simplify template copy
     * Postgrey
* MariaDB
 * provides a lambda **MariaDB** server peered on ``127.0.0.1:3306`` with ``root`` MySQL password on ``~/.my.cnf``
* ownCloud
 * provides a simple instance of **ownCloud**, with ``NGINX, PHP5-FPM, and MariaDB``

example host file
===== 

```yaml

---
admin_ssh_keys: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZXK3ufonx+zNQ1x6cSWuUWckB/xf9sKZ+mRgY5SPXzqrxSkqNSmr9JQ6xzvhxKEVcFWsi50op1WWtRo3HG3p3+EHKXeCyzt5QnczDlVOoQbB8kgI0byKcvXux1inL4/Q4DbVLUbDFnynD/C5aAyYMYePahMxR+AQr60DD+7Ty6pcEVih1wwHIlxWziY1EF6sEzQwz/PiTxWIZkKHl/WPGagS9Pp/5nQfdZy0AS/JqbzNyMEg51+XedADuqseV4GXDzrzDYLJXJFv1PFVJxRWLrjChKrUMqyszUySkZMr5YSPXlsV0bi+0xivYEsXvIkLORV96JTZosYbV+0aFKDPv root@debian

default_packages_debian: htop

description: machine test

# NTP
ntp_servers:
  - 0.pool.ntp.org
  - 1.pool.ntp.org
  - 2.pool.ntp.org
disable_ipv6: true

# Mail
domain: test.net

# MariaDB
mariadb_version: 10.0
mysql_root_password: changeme
mysql_host: localhost

# ircbouncer
znc_version: 1.4
 irc_nick: (required)
 irc_ident: (required)
 irc_realname: (required)
 irc_quitmsg: (required)
 irc_password_hash: (required)
 irc_password_salt: (required)

# xmpp
prosody_admin: "admin@test.net"
prosody_virtual_domain: "test.net"
prosody_accounts: admin@test.net

#Wallabag
wallabag_version: 1.7.1
wallabag_domain: "read.{{ domain }}"
# wallabag_salt: (required)
wallabag_db_username: wallabag
# wallabag_db_password: (required)
wallabag_db_database: wallabag
# vim: set textwidth=0 ft=yaml:

```

