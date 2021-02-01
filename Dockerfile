FROM isdnetworks/openjdk:8-jdk-ko
LABEL maintainer="is:-D Networks Docker Maintainers <jhcheong@isdnetworks.pe.kr>"

ADD apache-activemq-5.16.1-bin.tar.gz /usr/local/
WORKDIR /usr/local/apache-activemq-5.16.1

VOLUME ["/usr/local/apache-activemq-5.16.1/data"]

EXPOSE 61616/tcp 5672/tcp 61613/tcp 1883/tcp 61614/tcp 8161/tcp

CMD ["/usr/local/apache-activemq-5.16.1/bin/activemq", "console"]

