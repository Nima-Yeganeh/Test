#!/bin/bash

for i in {1..1000000}
do
  echo $i
  python3 test4_post_plus_image_upload.py
  sleep 5
done
