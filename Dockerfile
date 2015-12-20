FROM debian

MAINTAINER Knut Ahlers <knut@luzifer.io>

ENV VERSION 0.6.3

WORKDIR /opt

ADD start.sh /opt/start.sh
ADD config.dist.cfg /opt/config.dist.cfg

ADD https://downloads.teeworlds.com/teeworlds-${VERSION}-linux_x86_64.tar.gz /opt/teeworlds.tar.gz
RUN tar xzf teeworlds.tar.gz \
 && mv /opt/teeworlds*/ /opt/teeworlds 

VOLUME /data
EXPOSE 8303/tcp

ENTRYPOINT ["/opt/start.sh"]
CMD ["--"]
