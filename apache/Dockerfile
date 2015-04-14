# Apache server
# On Debian Wheezy
#
# VERSION 1
#

FROM mfranc/base-debian
MAINTAINER "Mickael FRANC" <mickael.franc@gmail.com>

# Install required packages
RUN apt-get install -y -q memcached apache2-mpm-itk mysql-client php5 libapache2-mod-macro libapache2-mod-php5 php5-cli php5-mysql php5-curl php5-memcached php5-gd php5-xdebug php5-mcrypt php5-intl

# Setup httpd environment variables
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
RUN a2dissite default
RUN a2enmod macro rewrite php5

# Update PHP configuration
RUN sed -i "s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/" /etc/php5/apache2/php.ini
# RUN sed -i "s/;date.timezone = .*$/date.timezone = 'Europe/Paris'/" /etc/php5/apache2/php.ini
# RUN sed -i "s/;date.timezone = .*$/date.timezone = 'Europe/Paris'/" /etc/php5/cli/php.ini

EXPOSE 80 9000
ADD custom/ /
RUN chmod 755 /start.sh
CMD ["/start.sh"]
