#!/bin/bash
sed -i "s/%{rabbithost}/$AMQ_PORT_5672_TCP_ADDR/" /etc/logstash/logstash.conf
/usr/bin/java -jar /opt/logstash/logstash-flatjar.jar agent -f /etc/logstash/logstash.conf
# /bin/bash

