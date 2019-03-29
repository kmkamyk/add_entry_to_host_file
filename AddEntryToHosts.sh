#!/bin/bash
#Zmienne
ip_address="192.168.1.100"
host_name="lucy"
host_entry="${ip_address}   ${host_name}"

#   statusy bledow
#   exit 2  -   wpis istnieje

if [ `grep -i $ip_address /etc/hosts |grep $host_name|wc -l` -eq 0 ]
then
    echo $host_entry
    echo "wpis nie istnieje, dodaje wpis"
else
    echo $host_entry
    echo "wpis istnieje nic nie robie"
    exit 2
fi