targethost="test5_wordpress-wordpress1-1"
docker exec -it $targethost bash -c "wp --info"
docker exec -it $targethost bash -c "wp theme install kadence --allow-root"
docker exec -it $targethost bash -c "wp theme list --allow-root"
docker exec -it $targethost bash -c "wp theme activate kadence --allow-root"

