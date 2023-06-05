#!/bin/bash

for i in {1..10}
do
  echo $i
  python3 test21_post_cat_tag_image_upload_fa.py
  sleep 0
done

