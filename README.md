Fires up a rethinkdb proxy that joins $RETHINKDB_JOIN_ADDR and exposes a TLS port 28443 for rethinkdb drivers to connect to.

You must provide the volume /certs with the following files:

* server.pem
* server-key.pem
* ca.pem

Client connections will be verified with ca.pem
