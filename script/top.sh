#!/bin/bash

while :
do
  echo ""
  date
  kubectl top pods $1 --use-protocol-buffers --containers --selector="region=az1,app=server"
  sleep 15
done