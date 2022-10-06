#!/bin/sh

status=100

while true;
do
   sleep 5
   res=`kubectl top pods --selector="region=$1,app=$2" --use-protocol-buffers > /tmp/tmp_pods.txt`
   usage=`awk '(NR != 1) && ($2 != "istio-proxy") {sum += substr($3, 0, index($3,"m")-1)} END {print sum/((NR-1)/2)}' < /tmp/tmp_pods.txt`

   if [ ${usage} -ge 400 ] && [ ${status} -ne 80 ]; then
     kubectl apply -f vs-80.yaml
     status=80
     echo "apply vs-80.yaml"
     continue
   fi

   if [ ${usage} -le 350 ] && [ ${status} -ne 100 ]; then
     kubectl apply -f vs-100.yaml
     status=100
     echo "apply vs-100.yaml"
     continue
   fi

done;