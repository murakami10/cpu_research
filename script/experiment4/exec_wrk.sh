
echo "" > result/result.txt


client=$((10 * $2))


(

echo "client: " ${client}

for i in `seq 1 8` ; do
    echo ''
    echo $i '回目'
    date

kubectl exec -i $1 -- /bin/bash <<EOC
  wrk -t 1 -c ${client} -d 10 http://server:80/
EOC

    date
done

echo ''
echo ''
echo ''
echo '----------------------------------------------------------------------------'
echo ''
echo ''
echo ''



)  >> result/$3/result/input.txt
