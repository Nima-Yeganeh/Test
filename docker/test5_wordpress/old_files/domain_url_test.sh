#!/bin/bash

for i in {1..20}
do
  echo $i
  wget http://test2.nimayeganeh.ir/ -O /dev/null
done
