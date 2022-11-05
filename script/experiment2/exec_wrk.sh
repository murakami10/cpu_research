echo "" > result/result.txt

kubectl exec -i $1 -- /bin/sh <<  'EOC'

  for i in `seq 1 2`; do

   client=$((10 * $i))

    echo "client: " $client

    for j in `seq 1 17`; do
      echo ""
      echo $j "回目"
      date
      wrk -t 1 -c $client -d 10 http://server:80/
      date
    done

    sleep 30

    echo ""
    echo "-----------------------------"
    echo ""

  done

EOC

