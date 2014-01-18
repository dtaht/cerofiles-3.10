#!/bin/sh

days=3650
bits=1024
key=/etc/lighttpd/lighttpd.key
csr=/etc/lighttpd/lighttpd.csr
cert=/etc/lighttpd/lighttpd.crt
pem=/etc/lighttpd/lighttpd.pem
country=US
state=California
location=Erewhon
commonname=cerowrt.home.lan

openssl genrsa -out $key $bits
openssl req -new -key $key -out $csr \
     -subj "/C=$country/ST=$state/L=$location/CN=$commonname"
openssl x509 -req -days $days \
    -in $csr -signkey $key -out $cert
cat $key $cert > $pem
