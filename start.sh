#!/bin/bash
APP_COUNT="${APP_COUNT}"

for (( i = 1; i <= APP_COUNT; i++ )); do
  APP_NUM="app$i"
  APP_PORT_VAR="APP_PORT_$i"
  APP_DOMAIN_VAR="APP_DOMAIN_$i"
  /bin/cp /etc/nginx/conf.d/default.conf "/etc/nginx/conf.d/$APP_NUM.conf"
  /bin/sed -i "s/APP_NUM/$APP_NUM/" "/etc/nginx/conf.d/$APP_NUM.conf"
  /bin/sed -i "s/APP_PORT/${!APP_PORT_VAR}/" "/etc/nginx/conf.d/$APP_NUM.conf"
  /bin/sed -i "s/SERVER_DOMAIN_NAME/${!APP_DOMAIN_VAR}/" "/etc/nginx/conf.d/$APP_NUM.conf"
done

/bin/rm /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
