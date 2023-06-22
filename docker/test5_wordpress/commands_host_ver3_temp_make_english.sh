targethost="test5_wordpress-wordpress1-1"
docker exec -it $targethost bash -c "wp language core install en_US --allow-root"
docker exec -it $targethost bash -c "wp site switch-language en_US --allow-root"
