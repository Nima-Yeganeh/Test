targethost="test5_wordpress-wordpress1-1"
zcontact=$(cat zcontact.txt | head -n1)
docker exec $targethost bash -c "wp post update 2 --post_content='$zcontact' --allow-root"
