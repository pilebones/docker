# Debian Wheezy
#
# VERSION 1
#

FROM debian:wheezy
MAINTAINER "Mickael FRANC" <mickael.franc@gmail.com>

# Replace settings
ADD custom/ /

# Package upgrading / Package cleanning : dummies, orphans & co
RUN apt-get update && apt-get dist-upgrade -y -q && apt-get update && apt-get -y -q autoclean && apt-get -y -q autoremove

# Install required packages
RUN apt-get install -y -q htop vim pv git tcpdump wget curl w3m supervisor pwgen zsh sudo

# Install oh-my-zsh
RUN chsh -s /bin/zsh root && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
