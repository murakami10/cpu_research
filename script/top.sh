#!/bin/bash

while :
do
  echo ""
  date
  kubectl top pods $1 --use-protocol-buffers --containers
  sleep 15
done