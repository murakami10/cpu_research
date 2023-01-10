#!/bin/bash

echo "" > result/$1/$2/cpu.txt

#10ms
#portions=('_default' 8515 8515 5545 5545 7525 7525 '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default')
#20ms
#portions=('_default' 9505 9505 7525 7525 9010 9010 '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default')
#40ms
#portions=('_default' 9505 9505 9010 9010 9505 9505 '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default' '_default')

for j in `seq 1 24`; do

  if [ $((${j} % 2)) = 1 ]; then

    echo "" >> result/$1/$2/cpu.txt
    date  >> result/$1/$2/cpu.txt
    kubectl top pods --use-protocol-buffers --containers >>  result/$1/$2/cpu.txt

  fi

  sleep 5

  if [ $((${j} % 3)) = 0 ]; then

    echo ${portions[${j} / 3]}
    kubectl apply -f vs${portions[${j} / 3]}.yaml

  fi

done

kubectl apply -f vs_default.yaml

