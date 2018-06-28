#!/bin/bash

echo "Starting elasticsearch"
/opt/elasticsearch/bin/elasticsearch &
sleep 10
echo "Starting logstash"
/opt/logstash/bin/logstash -f /elk/config/logstash.conf &
sleep 10
echo "Starting kibana"
/opt/kibana/bin/kibana
