file_contents=$(docker exec test5_wordpress-wordpress1-1 bash -c "wp post list --post_type=page --post_status=publish --s='Contact' --field=ID --allow-root")
while IFS= read -r line; do
	echo "$line"
	docker exec test5_wordpress-wordpress1-1 bash -c "wp post update $line --post_name='Contact' --allow-root"
	docker exec test5_wordpress-wordpress1-1 bash -c "wp post update 2 --post_content='Contact' --allow-root"
done <<< "$file_contents"

