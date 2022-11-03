#!/bin/bash

echo "" > result/cpu.txt

for i in `seq 1 6`; do
  echo $i
  echo "" >> result/cpu.txt
  date  >> result/cpu.txt
  kubectl top pods $1 --use-protocol-buffers --containers >> result/cpu.txt
  sleep 10
done

kubectl apply -f vs.yaml

for i in `seq 1 8`; do
  echo $i
  echo "" >> result/cpu.txt
  date  >> result/cpu.txt
  kubectl top pods $1 --use-protocol-buffers --containers >> result/cpu.txt
  sleep 10
done

kubectl apply -f vs_default.yaml

python3 cpu.py

