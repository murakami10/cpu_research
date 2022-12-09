
echo "" > result/result.txt

i=$2

(
kubectl exec -i $1 -- /bin/sh <<  'EOC'


  client=$((10 * $i))

  echo "client: " $client

  for j in `seq 1 8`; do
    echo ""
    echo $j "回目"
    date
    wrk -t 1 -c $client -d 10 http://server:80/
    date
  done

  sleep 41.6


  echo ""
  echo ""
  echo ""
  echo "----------------------------------------------------------------------------"
  echo ""
  echo ""
  echo ""


EOC

) > text.txt

