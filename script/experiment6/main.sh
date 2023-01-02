
latency=20


echo $portion

echo "" > result/$latency/result/input.txt
echo "" > result/$latency/latency/latency.txt

for i in `seq 1 14`; do

  echo $i "回目"

  bash exec_wrk.sh $1 $i $latency &
  bash top.sh $i $latency &

  wait
  sleep 30

done
