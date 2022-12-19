
latency=10

declare -A array
array["1"] = 9505
array["2"] = 9505
array["3"] = 9505
array["4"] = 8515
array["5"] = 8020
array["6"] = 7525
array["7"] = 7030
array["8"] = 6535
array["9"] = 6535
array["10"] = 6040
array["11"] = 6545
array["12"] = 6545
array["13"] = 6545
array["14"] = 6545



echo "" > result/$latency/$portion/result/input.txt
echo "" > result/$latency/$portion/latency/latency.txt

for i in `seq 1 14`; do

  echo $i "回目"

  bash exec_wrk.sh $1 $i ${array[$i]} $latency &
  bash top.sh $i ${array[$i]} $latency &
  bash latency.sh ${array[$i]} $latency &

  wait
  sleep 30

done
