
latency=10

kubectl apply -f vs_xxxxx.yaml

sleep 10

bash exec_wrk.sh $1 $latency &
bash top.sh $latency &

wait
