
latency=20
array=(9505 9010 8515 8020 7525 7030 6535 6040 5545 5050 00100)

mkdir result/$latency

for portion in ${array[@]}; do

  mkdir result/$latency/$portion
  mkdir result/$latency/$portion/cpu
  mkdir result/$latency/$portion/latency
  mkdir result/$latency/$portion/result

done
