#!/bin/bash

/bin/sed -i "s/APP_PORT/${APP_PORT}/" /etc/nginx/conf.d/default.conf
/bin/sed -i "s/SERVER_DOMAIN_NAME/${SERVER_DOMAIN_NAME}/" /etc/nginx/conf.d/default.conf
nginx -g "daemon off;"
