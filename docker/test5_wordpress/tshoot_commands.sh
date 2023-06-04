docker exec -it test5_wordpress-wordpress1-1 bash -c "wp redis disable --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp config set WP_REDIS_PASSWORD your-redis-password-here --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin install redis-cache --activate --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp redis enable --force --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp redis status --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin deactivate login-lockdown --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin list --allow-root"
docker exec -it test5_wordpress-wordpress1-1 bash -c "wp plugin install login-lockdown --activate --allow-root"
