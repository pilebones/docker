# MySQL server
# On Debian Wheezy
#
# VERSION 1
#

FROM mfranc/base-debian
MAINTAINER "Mickael FRANC" <mickael.franc@gmail.com>

# Install required packages
RUN apt-get install -y -q mysql-server mysql-client

EXPOSE 3306
ADD custom/ /
RUN chmod 755 /start.sh
CMD ["/start.sh"]
