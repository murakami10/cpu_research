
echo "" > result/$2/input.txt

(

kubectl exec -i $1 -- /bin/bash <<EOC
  echo ''
  echo '1回目'
  date
  wrk -t 1 -c 40 -d 10 http://server:80/
  date

  echo ''
  echo '2回目'
  date
  wrk -t 1 -c 40 -d 10 http://server:80/
  date

  echo ''
  echo '3回目'
  date
  wrk -t 1 -c 40 -d 10 http://server:80/
  date

  echo ''
  echo '4回目'
  date
  wrk -t 1 -c 120 -d 10 http://server:80/
  date

  echo ''
  echo '5回目'
  date
  wrk -t 1 -c 120 -d 10 http://server:80/
  date

  echo ''
  echo '6回目'
  date
  wrk -t 1 -c 120 -d 10 http://server:80/
  date

  echo ''
  echo '7回目'
  date
  wrk -t 1 -c 60 -d 10 http://server:80/
  date

  echo ''
  echo '8回目'
  date
  wrk -t 1 -c 60 -d 10 http://server:80/
  date

  echo ''
  echo '9回目'
  date
  wrk -t 1 -c 60 -d 10 http://server:80/
  date

  echo ''
  echo '10回目'
  date
  wrk -t 1 -c 10 -d 10 http://server:80/
  date

  echo ''
  echo '11回目'
  date
  wrk -t 1 -c 10 -d 10 http://server:80/
  date

  echo ''
  echo '12回目'
  date
  wrk -t 1 -c 10 -d 10 http://server:80/
  date

EOC

echo ''
echo ''
echo ''
echo '----------------------------------------------------------------------------'
echo ''
echo ''
echo ''



)  >> result/$2/$3/input.txt
