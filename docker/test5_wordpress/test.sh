targethost="test5_wordpress-wordpress1-1"
docker exec $targethost bash -c "wp post update 2 --post_content='New Contact' --allow-root"
