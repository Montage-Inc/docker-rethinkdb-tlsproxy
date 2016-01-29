#!/bin/bash

#TODO exit if either fails/stop

stunnel /conf/stunnel.conf
rethinkdb proxy --bind all --join $RETHINKDB_JOIN_ADDR
