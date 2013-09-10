#!/bin/sh

days=3650
bits=1024
key=/etc/lighttpd.key
cert=/etc/lighttpd.crt
country=US
state=Maine
location=Erewhon
commonname=OpenWrt

/usr/sbin/px5g selfsigned -der \
    -days $days -newkey rsa:$bits -keyout "$key" -out "$cert" \
    -subj "/C=$country/ST=$state/L=$location/CN=$commonname"
