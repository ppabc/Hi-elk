#!/bin/bash

sed -i "s/Xms2g/Xms512m/g" /opt/elasticsearch/config/jvm.options
sed -i "s/Xmx2g/Xmx512m/g" /opt/elasticsearch/config/jvm.options
sed -i "s/Xms1g/Xms512m/g" /opt/logstash/config/jvm.options
sed -i "s/Xmx1g/Xmx512m/g" /opt/logstash/config/jvm.options

echo "Starting elasticsearch"
/opt/elasticsearch/bin/elasticsearch &
sleep 10
echo "Starting logstash"
/opt/logstash/bin/logstash -f /elk/config/logstash.conf &
sleep 10
echo "Starting kibana"
/opt/kibana/bin/kibana
