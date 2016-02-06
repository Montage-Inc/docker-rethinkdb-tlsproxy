#!/bin/bash

if [[ $CA_CERT ]]
then
  echo $CA_CERT > /cert/ca.pem
fi

if [[ $SERVER_CERT ]]
then
  echo $SERVER_CERT > /cert/server.pem
fi

if [[ $SERVER_KEY ]]
then
  echo $SERVER_KEY > /cert/server-key.pem
fi


stunnel /opt/stunnel.conf & \
rethinkdb proxy --join $RETHINKDB_JOIN_ADDR --driver-port 28015
