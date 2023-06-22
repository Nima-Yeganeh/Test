targethost="test5_wordpress-wordpress1-1"
zcontact="New Contact 2"
docker exec $targethost bash -c "wp post update 2 --post_content='$zcontact' --allow-root"
