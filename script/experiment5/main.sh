
latency=20
array=(9505 9010 8515 8020 7525 7030 6535 6040 5545 5050 00100)

for portion in ${array[@]}; do

  echo $portion

  echo "" > result/$latency/$portion/result/input.txt
  echo "" > result/$latency/$portion/latency/latency.txt

  for i in `seq 1 14`; do

    echo $i "回目"

    bash exec_wrk.sh $1 $i $portion $latency &
    bash top.sh $i $portion $latency &
    bash latency.sh $portion $latency &

    wait
    sleep 30

  done
done
