#!/bin/bash

echo "" > result/$1/cpu.txt

#10ms
portions=('_default' 9010 9010 9010 7030 7030 7030 5545 5545 5545 7030 7030 7030 8515 8515 8515 '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default')

for j in `seq 1 24`; do
  echo "" >> result/$1/cpu.txt
  date  >> result/$1/cpu.txt
  kubectl top pods --use-protocol-buffers --containers >>  result/$1/cpu.txt
  sleep 10
  echo ${portions[$j]}
  kubectl apply -f vs${portions[$j]}.yaml
done

kubectl apply -f vs_default.yaml

