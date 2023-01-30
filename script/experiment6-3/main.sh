
latency=10

kubectl apply -f vsxxxxx.yaml

sleep 10

bash exec_wrk.sh $1 $latency "dynamic" &
bash top.sh $latency "dynamic" &

wait

#kubectl apply -f vs_default.yaml
#sleep 10
#bash exec_wrk.sh $1 $latency 10000 &
#bash top_fix.sh $latency 10000 &
#wait

#kubectl apply -f vs9010.yaml
#sleep 10
#bash exec_wrk.sh $1 $latency 9010 &
#bash top_fix.sh $latency 9010 &
#wait

#kubectl apply -f vs8020.yaml
#sleep 10
#bash exec_wrk.sh $1 $latency 8020 &
#bash top_fix.sh $latency 8020 &
#wait

#kubectl apply -f vs7030.yaml
#sleep 10
#bash exec_wrk.sh $1 $latency 7030 &
#bash top_fix.sh $latency 7030 &
#wait

#kubectl apply -f vs6040.yaml
#sleep 10
#bash exec_wrk.sh $1 $latency 6040 &
#bash top_fix.sh $latency 6040 &
#wait

#kubectl apply -f vs5050.yaml
#sleep 10
#bash exec_wrk.sh $1 $latency 6040 &
#bash top_fix.sh $latency 6040 &
#wait
