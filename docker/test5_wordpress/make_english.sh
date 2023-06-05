docker exec -it test5_wordpress-wordpress1-1 bash -c "wp language core install en_US --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp site switch-language en_US --allow-root"

