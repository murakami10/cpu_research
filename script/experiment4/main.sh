
echo "" > result/91/result/input.txt
echo "" > result/91/latency/latency.txt


for i in `seq 1 14`; do

  bash exec_wrk.sh $1 $i 91 &
  bash top.sh $i 91 &
  bash latency.sh 91 &

  wait

  sleep 30

done


echo "" > result/82/result/input.txt
echo "" > result/82/latency/latency.txt


for i in `seq 1 14`; do

  bash exec_wrk.sh $1 $i 82 &
  bash top.sh $i 82 &
  bash latency.sh 82 &

  wait

  sleep 30

done


echo "" > result/73/result/input.txt
echo "" > result/73/latency/latency.txt


for i in `seq 1 14`; do

  bash exec_wrk.sh $1 $i 73 &
  bash top.sh $i 73 &
  bash latency.sh 73 &

  wait

  sleep 30

done

echo "" > result/64/result/input.txt
echo "" > result/64/latency/latency.txt


for i in `seq 1 14`; do

  bash exec_wrk.sh $1 $i 64 &
  bash top.sh $i 64 &
  bash latency.sh 64 &

  wait

  sleep 30

done

