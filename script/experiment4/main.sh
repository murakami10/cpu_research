
array=(91 82 73 64)

for portion in ${array[@]}; do

  echo "" > result/$portion/result/input.txt
  echo "" > result/$portion/latency/latency.txt

  for i in `seq 1 14`; do

    bash exec_wrk.sh $1 $i $portion &
    bash top.sh $i $portion &
    bash latency.sh $portion &
#    bash latency97.sh $portion &

    wait
    sleep 30

  done
done
