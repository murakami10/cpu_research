echo "" > result/result.txt


for i in `seq 1 2`; do

  $client=$(10 * $i)

  echo "client: " $client

  kubectl exec -i $1 -- /bin/sh << 'EOC'

  for j in `seq 1 3`; do
    echo ""
    echo $j "回目"
    date
    wrk -t 1 -c client -d 2 http://server:80/
    date
  done
EOC

  echo ""
  echo "-----------------------------"
  echo ""

done
