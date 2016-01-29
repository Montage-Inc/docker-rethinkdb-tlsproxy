#!/bin/bash

#TODO exit if either fails/stop

stunnel /opt/stunnel.conf
rethinkdb proxy --join $RETHINKDB_JOIN_ADDR --driver-port 28015
