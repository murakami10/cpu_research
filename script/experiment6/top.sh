#!/bin/bash

i=$1

echo "" > result/$1/cpu.txt

for j in `seq 1 11`; do
  echo "" >> result/$1/cpu.txt
  date  >> result/$1/cpu.txt
  kubectl top pods --use-protocol-buffers --containers >>  result/$1/cpu.txt
  sleep 10
done

