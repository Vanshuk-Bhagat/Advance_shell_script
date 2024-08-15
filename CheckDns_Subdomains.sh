#!/bin/bash
# DnsList is a file  with www, proxy, vpn, etc
for sub in $(cat DnsList)
do

host $sub.megacorpone.com
done
