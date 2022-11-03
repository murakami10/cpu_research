echo "" > result/result.txt

kubectl exec -i $1 -- /bin/sh << 'EOC'
for i in `seq 1 12`; do
  echo ""
  echo $i "回目"
  date
  wrk -t 1 -c 30 -d 10 http://server:80/
  date
done
'EOC'

