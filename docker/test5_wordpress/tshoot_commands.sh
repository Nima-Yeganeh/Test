docker exec -it test5_wordpress-wordpress1-1 bash -c "wp redis disable --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp config set WP_REDIS_PASSWORD your-redis-password-here --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin install redis-cache --activate --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp redis enable --force --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp redis status --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin deactivate login-lockdown --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin list --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin install login-lockdown --activate --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp language core install ar --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp site switch-language ar --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp language core install en_US --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp site switch-language en_US --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp language core install fa_IR --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp site switch-language fa_IR --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "ls -anp"
docker exec -it test5_wordpress-wordpress1-1 bash -c "cat wp-config.php"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin install loginizer --activate --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin deactivate loginizer --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp config set DISALLOW_FILE_EDIT true --raw --allow-root"
