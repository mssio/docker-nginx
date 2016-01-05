FROM nginx:1.9.9

ADD nginx.conf /etc/nginx/conf.d/default.conf
ADD start.sh /etc/nginx/start.sh

ENTRYPOINT ["/etc/nginx/start.sh"]
