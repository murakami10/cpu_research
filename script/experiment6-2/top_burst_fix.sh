#!/bin/bash

echo "" > result/$1/$2/cpu.txt

for j in `seq 1 24`; do

  if [ $((${j} % 2)) = 1 ]; then

    echo "" >> result/$1/$2/cpu.txt
    date  >> result/$1/$2/cpu.txt
    kubectl top pods --use-protocol-buffers --containers >>  result/$1/$2/cpu.txt

  fi

  sleep 5

done


