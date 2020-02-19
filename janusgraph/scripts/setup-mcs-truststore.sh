#!/bin/bash

set -x 

echo $JANUS_HOME

ls -lrta $JANUS_HOME
# ls -lrts /home/janusgraph/

cd $JANUS_HOME

curl https://www.amazontrust.com/repository/AmazonRootCA1.pem -O
openssl x509 -outform der -in $JANUS_HOME/AmazonRootCA1.pem -out $JANUS_HOME/temp_file.der
keytool -import -alias cassandra -keystore cassandra_truststore.jks -file temp_file.der -storepass amazon -noprompt

chmod 755 $JANUS_HOME/cassandra_truststore.jks

rm $JANUS_HOME/temp_file.der
ls -lrta $JANUS_HOME