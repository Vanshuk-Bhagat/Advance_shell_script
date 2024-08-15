#!/bin/bash

# Taking Domain name from user
read -p "Type the Doman name" Domain

# Find the DNS server for the specified domain

host -t ns $Domain | cut -d " " -f 4 > Dnsserver

# Try zone transfer one by one for each of the name servers

for variable in $(cat Dnsserver)

do 
host -l $Domain $variable
done
