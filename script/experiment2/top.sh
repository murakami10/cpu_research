#!/bin/bash

echo "" > result/cpu.txt

for i in `seq 1 14`; do
  echo $i
  echo "" >> result/cpu.txt
  date  >> result/cpu.txt
  kubectl top pods $1 --use-protocol-buffers --containers >> result/cpu.txt
  sleep 10
done

python3 cpu.py