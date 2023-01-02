
latency=20

echo "" > result/$latency/result/input.txt
echo "" > result/$latency/latency/latency.txt

bash exec_wrk.sh $1 $latency &
bash top.sh $latency &

