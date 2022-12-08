#!/bin/bash


for i in `seq 1 7`; do

  echo $i
  echo ""

  echo "" > cpu/cpu_$i.txt

  kubectl apply -f vs.yaml

  for j in `seq 1 11`; do
    echo $j
    echo "" >> cpu/cpu_$i.txt
    date  >> cpu/cpu_$i.txt
    kubectl top pods $1 --use-protocol-buffers --containers >> cpu/cpu_$i.txt
    sleep 10
  done

  kubectl apply -f vs_default.yaml

  sleep 10

  echo ""
  echo "--------------------------------"
  echo ""

done
