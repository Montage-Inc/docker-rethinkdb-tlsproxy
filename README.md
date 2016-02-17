Fires up a rethinkdb proxy that joins $RETHINKDB_JOIN_ADDR.
Exposes the driver as TLS port 28415.
Exposes the web admin as TLS port 28443.

You must provide the volume /certs with the following files:

* server.pem
* server-key.pem
* ca.pem

Or provide the pem files through environment variables:

* SERVER_CERT
* SERVER_KEY
* CA_CERT

Client connections will be verified with ca.pem
