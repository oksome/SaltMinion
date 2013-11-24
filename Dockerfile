# This is a vanilla Debian 7.2 debootstrap image:
FROM okso/debian:wheezy

MAINTAINER OKso http://okso.me

# ----- Installing Salt -----

RUN apt-get update
RUN apt-get install wget

RUN echo "deb http://debian.saltstack.com/debian wheezy-saltstack main" >> /etc/apt/sources.list
RUN wget -q -O- "http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key" | apt-key add -

RUN apt-get update
RUN apt-get upgrade

RUN apt-get install -y salt-minion

# ----- Setting up the config -----

ADD ./minion /etc/salt/minion

CMD rm /etc/salt/pki/minion/*; salt-minion
