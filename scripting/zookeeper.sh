#!/bin/bash


echo "Starting zookeeper"
~/tools/kafka/bin/zookeeper-server-start.sh \
  ~/dev/dogpound/config/zookeeper.properties \
  > zookeeper.log &

echo $! > zookeeper_pid
echo "Done."
