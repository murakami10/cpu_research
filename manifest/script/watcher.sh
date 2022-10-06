#!/bin/sh

while true;
do
   sleep 15;
   kubectl top pods --selector='region=$1,app=$2' >> aaa.txt
done;