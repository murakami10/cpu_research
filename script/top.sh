#!/bin/bash

echo "" > result/cpu.txt

for i in `seq 1 14`; do
  echo ""
  date
  kubectl top pods $1 --use-protocol-buffers --containers >> result/cpu.txt
  sleep 15
done

