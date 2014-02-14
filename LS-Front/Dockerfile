FROM LS-Base
MAINTAINER Jason Kendall

# Grab Configs
ADD logstash.conf /etc/logstash/logstash.conf
ADD ls-run.sh /tmp/ls-run.sh

# Start Applications
ENTRYPOINT ["/tmp/ls-run.sh"]

