targethost="test5_wordpress-wordpress1-1"
docker exec -it $targethost bash -c "wp language core install fa_IR --allow-root"
docker exec -it $targethost bash -c "wp site switch-language fa_IR --allow-root"
