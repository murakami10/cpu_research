

client=$((10 * $2))


(

echo "client: " ${client}

kubectl exec -i $1 -- /bin/bash <<EOC
  echo ''
  echo '1回目'
  date
  wrk -t 1 -c ${client} -d 10 http://server:80/
  date

  echo ''
  echo '2回目'
  date
  wrk -t 1 -c ${client} -d 10 http://server:80/
  date

  echo ''
  echo '3回目'
  date
  wrk -t 1 -c ${client} -d 10 http://server:80/
  date

  echo ''
  echo '4回目'
  date
  wrk -t 1 -c ${client} -d 10 http://server:80/
  date

  echo ''
  echo '5回目'
  date
  wrk -t 1 -c ${client} -d 10 http://server:80/
  date

  echo ''
  echo '6回目'
  date
  wrk -t 1 -c ${client} -d 10 http://server:80/
  date

  echo ''
  echo '7回目'
  date
  wrk -t 1 -c ${client} -d 10 http://server:80/
  date

  echo ''
  echo '8回目'
  date
  wrk -t 1 -c ${client} -d 10 http://server:80/
  date
EOC


echo ''
echo ''
echo ''
echo '----------------------------------------------------------------------------'
echo ''
echo ''
echo ''



)  >> result/$4/$3/result/input.txt
