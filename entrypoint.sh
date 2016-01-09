#!/bin/bash

if [ ! -f ${NAGIOS_HOME}/etc/htpasswd.users ] ; then
  htpasswd -bc ${NAGIOS_HOME}/etc/htpasswd.users ${NAGIOSADMIN_USER} "${NAGIOSADMIN_PASS}"
  chown -R ${NAGIOS_USER}:${NAGIOS_USER} ${NAGIOS_HOME}/etc/htpasswd.users
fi

# start supporting services
/etc/init.d/apache2 start
/etc/init.d/postfix start

exec ${NAGIOS_HOME}/bin/nagios ${NAGIOS_HOME}/etc/nagios.cfg
