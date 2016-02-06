#!/bin/bash

if [[ $CA_CERT ]]
then
  echo $CA_CERT > /certs/ca.pem
fi

if [[ $SERVER_CERT ]]
then
  echo $SERVER_CERT > /certs/server.pem
fi

if [[ $SERVER_KEY ]]
then
  echo $SERVER_KEY > /certs/server-key.pem
fi

echo "Authenticating Certificate Authority:"
cat /certs/ca.pem

stunnel /opt/stunnel.conf & \
rethinkdb proxy --join $RETHINKDB_JOIN_ADDR --driver-port 28015
