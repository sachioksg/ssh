FROM sachioksg/ubuntu:1.0
MAINTAINER sachioksg <s-kono@nri.co.jp>
RUN apt-get -y install openssh-server sudo
RUN sed -ri 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config

RUN /etc/init.d/ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
