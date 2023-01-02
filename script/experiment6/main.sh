
latency=20

bash exec_wrk.sh $1 $latency &
bash top.sh $latency &

