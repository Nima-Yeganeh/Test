targethost="test5_wordpress-wordpress1-1"
zurl="https://test2.nimayeganeh.ir"
title="Just Another Blog"
dbname="wordpress"
dbuser="wordpress"
dbpass="your_wordpress_password"
dbhost="db"
dbprefix="wp_"
admin_user="admin"
admin_password="P@ssw0rd"
admin_email="admin@domain.local"
max_attempts=99
current_attempt=1
connected=false

echo "Enter a 40-character code: "
read code
WP_Domain=$(python3 test_decrypt_full_arg.py 3 $code)
WP_User=$(python3 test_decrypt_full_arg.py 4 $code)
WP_Pass=$(python3 test_decrypt_full_arg.py 5 $code)
zurl="https://$WP_Domain"
title=$WP_Domain
admin_user=$WP_User
admin_password=$WP_Pass
# echo $zurl
# echo $title
# echo $admin_user
# echo $admin_password
# sleep 300

echo '**** wp info ****'
docker exec -it $targethost bash -c "wp --info"
echo '**** wp core config ****'
docker exec -it $targethost bash -c "wp core config --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpass --dbhost=$dbhost --dbprefix=$dbprefix --path=/var/www/html --allow-root"
echo '**** wp core install ****'
# docker exec -it $targethost bash -c "wp core install --url=$zurl --title='$title' --admin_user=$admin_user --admin_password=$admin_password --admin_email=$admin_email --path=/var/www/html --allow-root --skip-email"
echo '**** error checking ****'
echo 'Error' > tempfile
while [[ $current_attempt -le $max_attempts && $connected == false ]]; do
    output=$(cat tempfile)
    # echo $output
    # sleep 20
    # cat tempfile | grep -w 'Error'
    # cat $output
    # echo $output
    # echo $output
    echo '********'
    # sleep 20
    if [[ $output == *"Error"* ]]; then
        echo "Database connection error. Retrying... (Attempt: $current_attempt)"
        sleep 2  # Adjust the sleep duration as needed
        current_attempt=$((current_attempt + 1))
	docker exec $targethost bash -c "wp core install --url=$zurl --title='$title' --admin_user=$admin_user --admin_password=$admin_password --admin_email=$admin_email --path=/var/www/html --allow-root --skip-email" > tempfile 2>&1
    else
        echo "Database connection successful!"
        connected=true
    fi
done

if [[ $connected == false ]]; then
    echo "Failed to establish a database connection after $max_attempts attempts."
    exit 1
fi

echo '**** error resolved ****'
sleep 5

docker exec -it $targethost bash -c "wp core config --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpass --dbhost=$dbhost --dbprefix=$dbprefix --path=/var/www/html --allow-root"
docker exec -it $targethost bash -c "wp core install --url=$zurl --title='$title' --admin_user=$admin_user --admin_password=$admin_password --admin_email=$admin_email --path=/var/www/html --allow-root --skip-email"
docker exec -it $targethost bash -c "wp config list --allow-root"
docker exec -it $targethost bash -c "wp config set WP_POST_REVISIONS 0 --allow-root"
docker exec -it $targethost bash -c "wp core update --allow-root"
docker exec -it $targethost bash -c "wp core update-db --allow-root"
docker exec -it $targethost bash -c "wp config set WP_CACHE_KEY_SALT your-unique-salt-here --allow-root"
docker exec -it $targethost bash -c "wp config set WP_REDIS_PORT 6379 --allow-root"
docker exec -it $targethost bash -c "wp config set WP_REDIS_PASSWORD your-redis-password-here --allow-root"
docker exec -it $targethost bash -c "wp config set WP_REDIS_MAXTTL 86400 --allow-root"
docker exec -it $targethost bash -c "wp plugin install redis-cache --activate --allow-root"
docker exec -it $targethost bash -c "wp redis enable --force --allow-root"
docker exec -it $targethost bash -c "wp redis status --allow-root"
docker exec -it $targethost bash -c "wp plugin delete akismet --allow-root"
docker exec -it $targethost bash -c "wp plugin delete hello --allow-root"
docker exec -it $targethost bash -c "wp plugin install disable-comments --activate --allow-root"
docker exec -it $targethost bash -c "wp disable-comments delete --types=all --allow-root"
docker exec -it $targethost bash -c "wp disable-comments settings --types=all --allow-root"
docker exec -it $targethost bash -c "wp plugin install wordpress-seo --activate --allow-root"
docker exec -it $targethost bash -c "wp disable-comments settings --types=all --allow-root"
docker exec -it $targethost bash -c "wp yoast index --allow-root"
docker exec -it $targethost bash -c "wp post delete $(wp post list --post_type='page' --format=ids --allow-root) --allow-root"
docker exec -it $targethost bash -c "wp post list --post_type=page --allow-root"
docker exec -it $targethost bash -c "wp post delete $(wp post list --post_type='post' --format=ids --allow-root) --allow-root"
docker exec -it $targethost bash -c "wp post list --post_type=post --allow-root"
docker exec -it $targethost bash -c "wp theme activate twentytwentytwo --allow-root"
docker exec -it $targethost bash -c "wp --info"
docker exec -it $targethost bash -c "wp rewrite structure '/%year%/%monthnum%/%postname%/' --allow-root"
docker exec -it $targethost bash -c "wp rewrite structure '/%postname%/' --allow-root"
docker exec -it $targethost bash -c "wp cache flush --allow-root"
docker exec -it $targethost bash -c "wp rewrite flush --allow-root"
docker exec -it $targethost bash -c "rm -f wp-config-sample.php"
docker exec -it $targethost bash -c "chmod 400 wp-config.php"
docker exec -it $targethost bash -c "rm -f license.txt"
docker exec -it $targethost bash -c "rm -f readme.html"
docker exec -it $targethost bash -c "wp plugin install login-lockdown --activate --allow-root"
docker exec -it $targethost bash -c "chmod 755 wp-content"
docker exec -it $targethost bash -c "chmod 755 wp-content/themes"
docker exec -it $targethost bash -c "chmod 755 wp-content/plugins"
docker exec -it $targethost bash -c "chmod 755 /var/www/html"
docker exec -it $targethost bash -c "wp user update admin --display_name='Nimax Yeganeh' --allow-root"
docker exec -it $targethost bash -c "wp user update admin --nickname='Nimax Yeganeh' --allow-root"
docker exec -it $targethost bash -c "wp user update admin --user_nicename='Nimax Yeganeh' --allow-root"
# docker exec -it $targethost bash -c "wp plugin install hide-login --activate --allow-root"
# docker exec -it $targethost bash -c "wp option update hide_login_slug new-login-url --allow-root"
# docker exec -it $targethost bash -c "wp rewrite flush --allow-root"
# docker exec -it $targethost bash -c "wp plugin deactivate hide-login --allow-root"
docker exec -it $targethost bash -c "wp config set DISALLOW_FILE_EDIT true --raw --allow-root"

file_contents=$(docker exec $targethost bash -c "wp post list --post_type=page --post_status=draft --post_title='privacy policy' --field=ID --allow-root")
while IFS= read -r line; do
	echo "$line"
	docker exec $targethost bash -c "wp post delete $line --force --allow-root"
done <<< "$file_contents"

file_contents=$(docker exec $targethost bash -c "wp post list --post_type=post --post_status=any --post_title='Hello World' --field=ID --allow-root")
while IFS= read -r line; do
	echo "$line"
	docker exec $targethost bash -c "wp post delete $line --force --allow-root"
done <<< "$file_contents"

file_contents=$(docker exec $targethost bash -c "wp post list --post_type=page --post_status=publish --s='Sample Page' --field=ID --allow-root")
while IFS= read -r line; do
	echo "$line"
	docker exec $targethost bash -c "wp post update $line --post_title='Contact' --allow-root"
done <<< "$file_contents"

file_contents=$(docker exec $targethost bash -c "wp post list --post_type=page --post_status=publish --s='Contact' --field=ID --allow-root")
while IFS= read -r line; do
	echo "$line"
	docker exec $targethost bash -c "wp post update $line --post_name='Contact' --allow-root"
	docker exec $targethost bash -c "wp post update 2 --post_content='Contact' --allow-root"
done <<< "$file_contents"

docker exec -it $targethost bash -c "chmod 755 wp-content/cache"
docker exec -it $targethost bash -c "chmod 755 wp-content/upgrade"
docker exec -it $targethost bash -c "chmod 755 wp-content/uploads"
