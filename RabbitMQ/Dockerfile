FROM ubuntu:12.04
MAINTAINER Jason Kendall

# Partly from: https://github.com/mikaelhg/docker-rabbitmq/blob/master/Dockerfile

# Add RabbitMQ repo
RUN echo "deb http://www.rabbitmq.com/debian/ testing main" > /etc/apt/sources.list.d/rabbitmq.list

ADD rabbitmq-signing-key-public.asc /tmp/rabbitmq-signing-key-public.asc
RUN apt-key add /tmp/rabbitmq-signing-key-public.asc

# (Optional) Set APT proxy
# RUN echo 'Acquire::http { Proxy "http://10.0.10.10:8000"; };' > /etc/apt/apt.conf.d/99proxy

# Update packages
RUN apt-get update

# Docker work around for upstart: [https://github.com/dotcloud/docker/issues/1024]
ADD policy-rc.d /usr/sbin/policy-rc.d
RUN /bin/chmod 755 /usr/sbin/policy-rc.d

ENV DEBIAN_FRONTEND noninteractive

# Add wget and JDK
RUN apt-get install -y rabbitmq-server

# Install the rabbitmq_management API
RUN rabbitmq-plugins enable rabbitmq_management

EXPOSE 5672 15672 4369

# Start Applications
ENTRYPOINT ["/usr/sbin/rabbitmq-server"]
