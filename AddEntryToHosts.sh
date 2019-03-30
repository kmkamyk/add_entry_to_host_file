#!/bin/bash
#Zmienne
log=/tmp/add_entry_to_hosts.log
ip_address="192.168.1.xxx"
host_name="xxx"
host_entry="${ip_address}\t${host_name}"

#   statusy bledow
#   exit 2  -   wpis istnieje

if [ `egrep -i "$ip_address|$host_name" /etc/hosts|wc -l` -eq 0 ]
then
    echo $host_entry
    echo "wpis nie istnieje, dodaje wpis" >>
    awk 'FNR==NR{ if (/test/) p=NR; next} 1; FNR==p{ print "$host_entry" }' /etc/hosts
else
    echo $host_entry
    echo "wpis istnieje, koncze skrypt"
    exit 2
fi

# koniec
