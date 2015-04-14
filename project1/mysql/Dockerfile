# MySQL server
# On Debian Wheezy
#
# VERSION 1
#

FROM mfranc/mysql-debian
MAINTAINER "Mickael FRANC" <mickael.franc@gmail.com>

EXPOSE 3306
ADD custom/ /
RUN chmod 755 /initDb.sh
RUN /initDb.sh
CMD ["/start.sh"]
