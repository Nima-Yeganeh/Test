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

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp post list --post_type=page --post_status=draft --post_title='privacy policy' --field=ID --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp post delete $(wp post list --post_type=page --post_status=draft --post_title='privacy policy' --field=ID --allow-root) --force --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp post --help --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp post list --post_type=post --post_status=any --post_title='Hello World' --field=ID --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c ""

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp post list --post_type=page --post_status=publish --s='Sample Page' --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp post list --post_type=page --post_status=publish --s='Sample Page' --field=ID --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp post update <sample_page_id> --post_title='Contact' --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp post update 2 --post_title='Contact' --allow-root"

docker exec -it test5_wordpress-wordpress1-1 bash -c "wp post update 2 --post_name='Contact' --allow-root"

