#!/bin/bash
#Zmienne
log=/tmp/add_entry_to_hosts.log
ip_address="192.168.1.100"
host_name="lucy"
host_entry="${ip_address}   ${host_name}"

#   statusy bledow
#   exit 2  -   wpis istnieje

if [ `egrep -i "$ip_address|$host_name" /etc/hosts|wc -l` -eq 0 ]
then
    echo $host_entry
    echo "wpis nie istnieje, dodaje wpis" >>
else
    echo $host_entry
    echo "wpis istnieje, koncze skrypt"
    exit 2
fi

# koniec
