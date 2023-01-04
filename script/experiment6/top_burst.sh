#!/bin/bash

echo "" > result/$1/cpu.txt

#10ms
#portions=('_default' 9010 9010 9010 5545 5545 5545 8020 8020 8020 '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default')
#20ms
#portions=('_default' 9505 9505 9505 7525 7525 7525 9010 9010 9010 '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default')
#40ms
#portions=('_default' 9505 9505 9505 9010 9010 9010 9505 9505 9505 '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default')

for j in `seq 1 14`; do
  echo "" >> result/$1/cpu.txt
  date  >> result/$1/cpu.txt
  kubectl top pods --use-protocol-buffers --containers >>  result/$1/cpu.txt
  sleep 10
  echo ${portions[$j]}
  kubectl apply -f vs${portions[$j]}.yaml
done

kubectl apply -f vs_default.yaml

