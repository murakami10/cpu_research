
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
  wrk -t 1 -c 80 -d 10 http://server:80/
  date

  echo ''
  echo '5回目'
  date
  wrk -t 1 -c 80 -d 10 http://server:80/
  date

  echo ''
  echo '6回目'
  date
  wrk -t 1 -c 80 -d 10 http://server:80/
  date

  echo ''
  echo '7回目'
  date
  wrk -t 1 -c 120 -d 10 http://server:80/
  date

  echo ''
  echo '8回目'
  date
  wrk -t 1 -c 120 -d 10 http://server:80/
  date

  echo ''
  echo '9回目'
  date
  wrk -t 1 -c 120 -d 10 http://server:80/
  date

  echo ''
  echo '10回目'
  date
  wrk -t 1 -c 140 -d 10 http://server:80/
  date

  echo ''
  echo '11回目'
  date
  wrk -t 1 -c 140 -d 10 http://server:80/
  date

  echo ''
  echo '12回目'
  date
  wrk -t 1 -c 140 -d 10 http://server:80/
  date

  echo ''
  echo '13回目'
  date
  wrk -t 1 -c 80 -d 10 http://server:80/
  date

  echo ''
  echo '14回目'
  date
  wrk -t 1 -c 80 -d 10 http://server:80/
  date

  echo ''
  echo '15回目'
  date
  wrk -t 1 -c 80 -d 10 http://server:80/
  date

  echo ''
  echo '16回目'
  date
  wrk -t 1 -c 50 -d 10 http://server:80/
  date

  echo ''
  echo '17回目'
  date
  wrk -t 1 -c 50 -d 10 http://server:80/
  date

  echo ''
  echo '18回目'
  date
  wrk -t 1 -c 50 -d 10 http://server:80/
  date

  echo ''
  echo '19回目'
  date
  wrk -t 1 -c 10 -d 10 http://server:80/
  date

  echo ''
  echo '20回目'
  date
  wrk -t 1 -c 10 -d 10 http://server:80/
  date

  echo ''
  echo '21回目'
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



)  >> result/$2/input.txt
