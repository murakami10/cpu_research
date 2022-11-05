#!/bin/bash


for i in `seq 1 4`; do

  echo $i
  echo ""

  echo "" > result/cpu_$i.txt

  for j in `seq 1 8`; do
    echo $j
    echo "" >> result/cpu_$i.txt
    date  >> result/cpu_$i.txt
    kubectl top pods $1 --use-protocol-buffers --containers >> result/cpu_$i.txt
    sleep 10
  done

  kubectl apply -f vs.yaml

  for j in `seq 1 11`; do
    echo $j
    echo "" >> result/cpu_$i.txt
    date  >> result/cpu_$i.txt
    kubectl top pods $1 --use-protocol-buffers --containers >> result/cpu_$i.txt
    sleep 10
  done

  kubectl apply -f vs_default.yaml

  sleep 10

  echo ""
  echo "--------------------------------"
  echo ""

done
