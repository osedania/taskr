#!/usr/bin/env bash

(

#server
sleep 1
echo $1

#autodetect
sleep 2
echo 'yes'

#fingerprint ..
sleep 1
echo ""

#username
sleep 1
echo $2

#password
sleep 1
echo $3

sleep 1) |  dpkg -i kerio-control-vpnclient-9.2.7-2921-linux-amd64.deb
