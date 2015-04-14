# Web server for Project1
#
# VERSION 1
#

FROM mfranc/apache-debian
MAINTAINER "Mickael FRANC" <mickael.franc@gmail.com>

EXPOSE 80 9000
ADD custom/ /
RUN a2ensite project1-vhost.conf
CMD ["/start.sh"]
