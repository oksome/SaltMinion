FROM ubuntu:14.04

MAINTAINER OKso http://okso.me

# ----- Installing Salt -----

RUN apt-get update
RUN add-apt-repository ppa:saltstack/salt
RUN apt-get update

RUN apt-get upgrade

RUN apt-get install -y salt-minion

# ----- Setting up the config -----

ADD ./minion /etc/salt/minion

CMD echo "id: "$(cat /etc/hostname) >> /etc/salt/minion; salt-minion
