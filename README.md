configz
=======

Yet another ansible's playbook repository

roles
======

* common
 * provides common configuration
 * https://github.com/nojhan/liquidprompt <3
* mail
 * provides a mail service for a given domain name and the vdomain capability for other domains.
 * **Note** : This role starts in order : common, mariadb, and mail. If you don't want one of them, please comment out.
 * **Note2** : If you already have a SQL server, **it wont erase the original config**, but it needs a ``~/.my.cnf``.
* mariadb
 * provides a mariadb lambda server peered on ``127.0.0.1:3306`` with ``root`` MySQL password on ``~/.my.cnf`` 

example host file
===== 

```yaml

---
admin_ssh_keys: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDZXK3ufonx+zNQ1x6cSWuUWckB/xf9sKZ+mRgY5SPXzqrxSkqNSmr9JQ6xzvhxKEVcFWsi50op1WWtRo3HG3p3+EHKXeCyzt5QnczDlVOoQbB8kgI0byKcvXux1inL4/Q4DbVLUbDFnynD/C5aAyYMYePahMxR+AQr60DD+7Ty6pcEVih1wwHIlxWziY1EF6sEzQwz/PiTxWIZkKHl/WPGagS9Pp/5nQfdZy0AS/JqbzNyMEg51+XedADuqseV4GXDzrzDYLJXJFv1PFVJxRWLrjChKrUMqyszUySkZMr5YSPXlsV0bi+0xivYEsXvIkLORV96JTZosYbV+0aFKDPv root@debian
default_packages_debian: htop
description: machine test
ntp_server1: 0.pool.ntp.org
ntp_server2: 1.pool.ntp.org
disable_ipv6: true
domain: test.net
mariadb_version: 10.0
mysql_root_password: changeme
mysql_host: localhost
# vim: set textwidth=0 ft=yaml:

```

