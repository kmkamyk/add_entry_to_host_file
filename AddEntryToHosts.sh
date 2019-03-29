#!/bin/bash
#Zmienne
ip_address="192.168.1.100"
host_name="lucy"
host_entry="${ip_address}   ${host_name}"

#   statusy bledow
#   exit 2  -   wpis istnieje

if [ `egrep -i $host_entry /etc/hosts |wc -l` -eq 0 ]
then
    echo "wpis nie istnieje, dodaje wpis"
else
    echo "wpis istnieje nic nie robie"
    exit 2
fi