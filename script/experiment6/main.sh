
latency=10

bash exec_wrk.sh $1 $latency &
bash top.sh $latency &

wait
