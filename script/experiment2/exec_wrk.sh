echo "" > result/result.txt


for i in `seq 1 12`; do

  kubectl exec -i $1 -- /bin/sh << 'EOC'

  for j in `seq 1 12`; do
    echo ""
    echo $j "回目"
    date
    wrk -t 1 -c 30 -d 10 http://server:80/
    date
  done

  exit

  echo ""
  echo ""
  echo "-----------------------------"
  echo ""
  echo $i + 1
  echo ""

done

