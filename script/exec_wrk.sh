kubectl exec $1 --stdin  --tty  -- /bin/sh

for i in `seq 1 9`
do
  echo ""
  echo $i "回目"
  date
  wrk -t 1 -c 25 -d 10 http://server:80/
  date
done

