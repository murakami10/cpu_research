#!/bin/bash


for i in `seq 1 2`; do

  echo "" > result/cpu_$i.txt

  for j in `seq 1 2`; do
    echo $j
    echo "" >> result/cpu_$i.txt
    date  >> result/cpu_$i.txt
    kubectl top pods $1 --use-protocol-buffers --containers >> result/cpu_$i.txt
    sleep 5
  done

  kubectl apply -f vs.yaml

  for j in `seq 1 2`; do
    echo $j
    echo "" >> result/cpu_$i.txt
    date  >> result/cpu_$i.txt
    kubectl top pods $1 --use-protocol-buffers --containers >> result/cpu_$i.txt
    sleep 5
  done

  kubectl apply -f vs_default.yaml

  echo ""
  echo "--------------------------------"
  echo ""

done
