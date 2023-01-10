
latency=10

kubectl apply -f vs_xxxxx.yaml

sleep 10

bash exec_wrk_l10_burst.sh $1 $latency "dynamic" &
bash top_burst.sh $latency "dynamic" &
wait

#kubectl apply -f vs_9010.yaml
#bash exec_wrk_l10_burst.sh $1 $latency 9010 &
#bash top_burst_fix.sh $latency 9010 &
#wait

#kubectl apply -f vs_8020.yaml
#bash exec_wrk_l10_burst.sh $1 $latency 8020 &
#bash top_burst_fix.sh $latency 8020 &
#wait

#kubectl apply -f vs_7030.yaml
#bash exec_wrk_l10_burst.sh $1 $latency 7030 &
#bash top_burst_fix.sh $latency 7030 &
#wait

#kubectl apply -f vs_6040.yaml
#bash exec_wrk_l10_burst.sh $1 $latency 6040 &
#bash top_burst_fix.sh $latency 6040 &
#wait
