#!/bin/bash

echo "Starting broker 1"
~/tools/kafka/bin/kafka-server-start.sh \
  ~/dev/dogpound/config/server1.properties \
  > broker.log & 

echo $! > broker1_pid

echo "Starting broker 2"
~/tools/kafka/bin/kafka-server-start.sh \
  ~/dev/dogpound/config/server2.properties \
  > broker.log & 

echo $! > broker2_pid

echo "Starting broker 3"
~/tools/kafka/bin/kafka-server-start.sh \
  ~/dev/dogpound/config/server3.properties \
  > broker.log & 

echo $! > broker3_pid


echo "Done."
