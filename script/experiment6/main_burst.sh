
latency=10

bash exec_wrk_l10_burst.sh $1 $latency &
bash top_burst.sh $latency &

wait
