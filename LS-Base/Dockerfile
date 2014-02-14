FROM ubuntu
MAINTAINER Jason Kendall

# (Optional) Set APT proxy
# RUN echo 'Acquire::http { Proxy "http://10.0.10.10:8000"; };' > /etc/apt/apt.conf.d/99proxy

# Update packages
RUN apt-get update

# Add wget and JDK
RUN apt-get install -y openjdk-6-jre

# Pull Down Logstash
ADD logstash-1.3.3-flatjar.jar /opt/logstash/logstash-flatjar.jar

# Grab Configs
RUN mkdir /etc/logstash
