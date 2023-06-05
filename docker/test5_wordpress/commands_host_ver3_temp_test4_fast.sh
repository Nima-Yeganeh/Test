targethost="test5_wordpress-wordpress1-1"
bash make_theme_file.sh
line="blocksy"
cat themes_new.txt | while read -r line
do
	echo "$line"
	docker exec $targethost bash -c "wp --info"
	docker exec $targethost bash -c "wp theme install $line --allow-root"
	docker exec $targethost bash -c "wp theme list --allow-root"
	docker exec $targethost bash -c "wp theme activate $line --allow-root"
	sleep 10
done

