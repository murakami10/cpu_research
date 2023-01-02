
echo "" > result/$2/input.txt

(

kubectl exec -i $1 -- /bin/bash << 'EOC'

clients=(10 20 30 40 50 60 70 80 90 100 110 120 130 140)

for i in `seq 1 8` do

  echo ''
  echo $i '回目'
  date
  wrk -t 1 -c $clients[$i] -d 10 http://server:80/
  date

done

'EOC'

echo ''
echo ''
echo ''
echo '----------------------------------------------------------------------------'
echo ''
echo ''
echo ''



)  >> result/$2/input.txt
