FROM isdnetworks/openjdk:8-jdk-ko
LABEL maintainer="is:-D Networks Docker Maintainers <jhcheong@isdnetworks.pe.kr>"

ADD apache-activemq-5.16.1-bin.tar.gz /usr/local/
WORKDIR /usr/local/apache-activemq-5.16.1
RUN sed -i 's/^ACTIVEMQ_OPTS_MEMORY="-Xms64M -Xmx1G"$/ACTIVEMQ_OPTS_MEMORY="-Xms16G -Xmx16G"/g' /usr/local/apache-activemq-5.16.1/bin/env \
 && sed -i 's/^  echo "\$REAL_DIR\/"$/  echo "\$REAL_DIR"/g' /usr/local/apache-activemq-5.16.1/bin/activemq

VOLUME ["/usr/local/apache-activemq-5.16.1/data"]

EXPOSE 61616/tcp 5672/tcp 61613/tcp 1883/tcp 61614/tcp 8161/tcp

CMD ["/usr/local/apache-activemq-5.16.1/bin/activemq", "console"]

