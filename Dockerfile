FROM docker.elastic.co/logstash/logstash-oss:6.4.2

RUN bin/logstash-plugin install logstash-input-nats && \
  bin/logstash-plugin install logstash-input-lumberjack

RUN bin/logstash-plugin remove logstash-input-azure_event_hubs && \
  bin/logstash-plugin remove logstash-input-beats && \
  bin/logstash-plugin remove logstash-input-dead_letter_queue && \
  bin/logstash-plugin remove logstash-input-elasticsearch && \
  bin/logstash-plugin remove logstash-input-exec && \
  bin/logstash-plugin remove logstash-input-file && \
  bin/logstash-plugin remove logstash-input-ganglia && \
  bin/logstash-plugin remove logstash-input-gelf && \
  bin/logstash-plugin remove logstash-input-graphite && \
  bin/logstash-plugin remove logstash-input-heartbeat && \
  bin/logstash-plugin remove logstash-input-http && \
  bin/logstash-plugin remove logstash-input-http_poller && \
  bin/logstash-plugin remove logstash-input-imap && \
  bin/logstash-plugin remove logstash-input-jdbc && \
  bin/logstash-plugin remove logstash-input-kafka && \
  bin/logstash-plugin remove logstash-input-pipe && \
  bin/logstash-plugin remove logstash-input-rabbitmq && \
  bin/logstash-plugin remove logstash-input-redis && \
  bin/logstash-plugin remove logstash-input-s3 && \
  bin/logstash-plugin remove logstash-input-snmptrap && \
  bin/logstash-plugin remove logstash-input-sqs && \
  bin/logstash-plugin remove logstash-input-stdin && \
  bin/logstash-plugin remove logstash-input-syslog && \
  bin/logstash-plugin remove logstash-input-tcp && \
  bin/logstash-plugin remove logstash-input-twitter && \
  bin/logstash-plugin remove logstash-input-udp && \
  bin/logstash-plugin remove logstash-input-unix && \
  bin/logstash-plugin remove logstash-output-cloudwatch && \
  bin/logstash-plugin remove logstash-output-csv && \
  bin/logstash-plugin remove logstash-output-elasticsearch && \
  bin/logstash-plugin remove logstash-output-email && \
  bin/logstash-plugin remove logstash-output-file && \
  bin/logstash-plugin remove logstash-output-graphite && \
  bin/logstash-plugin remove logstash-output-http && \
  bin/logstash-plugin remove logstash-output-kafka && \
  bin/logstash-plugin remove logstash-output-nagios && \
  bin/logstash-plugin remove logstash-output-pagerduty && \
  bin/logstash-plugin remove logstash-output-pipe && \
  bin/logstash-plugin remove logstash-output-rabbitmq && \
  bin/logstash-plugin remove logstash-output-redis && \
  bin/logstash-plugin remove logstash-output-s3 && \
  bin/logstash-plugin remove logstash-output-sns && \
  bin/logstash-plugin remove logstash-output-sqs && \
  bin/logstash-plugin remove logstash-output-tcp && \
  bin/logstash-plugin remove logstash-output-udp && \
  bin/logstash-plugin remove logstash-output-webhdfs
