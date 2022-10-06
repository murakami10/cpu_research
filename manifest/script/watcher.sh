#!/bin/sh

status=100

while true;
do
   sleep 1
   kubectl top pods --selector="region=$1,app=$2" > tmp_pods.txt
   usage=`awk 'NR != 1 {sum += substr($2, 0, index($2,"m")-1)} END {print sum/(NR-1)}' tmp_pods.txt`

   if [ ${usage} -ge 400 && ${status} -ne 80 ]; then
     kubectl apply -f vs-80.yaml
     status=80
     echo "apply vs-80.yaml"
     continue
   fi

   if [ ${usage} -ge 350 && ${status} -ne 100 ]; then
     kubectl apply -f vs-100.yaml
     status=100
     echo "apply vs-100.yaml"
     continue
   fi

done;