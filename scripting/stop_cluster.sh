#!/bin/bash

BROKER_PID=`cat broker_pid`
sudo kill $BROKER_PID
rm broker.log

ZOOKEEPER_PID=`cat zookeeper_pid`
sudo kill $ZOOKEEPER_PID
rm zookeeper.log
