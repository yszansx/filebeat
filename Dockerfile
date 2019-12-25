FROM docker.elastic.co/beats/filebeat:7.3.0
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
COPY modules.d /usr/share/filebeat/modules.d
USER root
VOLUME ["/volume"]
RUN chmod 777 /volume && \
chown root:filebeat /usr/share/filebeat/filebeat.yml && \
/bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
