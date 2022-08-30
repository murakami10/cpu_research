#!/bin/bash

for i in `seq 1 6`
do
  echo $i "回目"
  date
  wrk -t 1 -c 30 -d 10 http://server:80/
done
