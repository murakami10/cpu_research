#!/bin/bash


i=$1

echo "" > result/$3/$2/cpu/cpu_$i.txt

kubectl apply -f vs${2}.yaml

for j in `seq 1 11`; do
  echo "" >> result/$3/$2/cpu/cpu_$i.txt
  date  >> result/$3/$2/cpu/cpu_$i.txt
  kubectl top pods --use-protocol-buffers --containers >>  result/$3/$2/cpu/cpu_$i.txt
  sleep 10
done

kubectl apply -f vs_default.yaml

