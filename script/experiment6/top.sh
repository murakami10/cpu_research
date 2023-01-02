#!/bin/bash

echo "" > result/$1/cpu.txt

portions=(00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100 00100)

for j in `seq 1 23`; do
  echo "" >> result/$1/cpu.txt
  date  >> result/$1/cpu.txt
  kubectl top pods --use-protocol-buffers --containers >>  result/$1/cpu.txt
  sleep 10
  kubectl apply -f vs$portions[$j].yaml
done

kubectl apply -f vs_default.yaml

