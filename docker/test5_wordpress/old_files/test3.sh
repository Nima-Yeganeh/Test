file_contents=$(docker exec test5_wordpress-wordpress1-1 bash -c "wp post list --post_type=post --post_status=any --post_title='Hello World' --field=ID --allow-root")
while IFS= read -r line; do
	echo "$line"
	docker exec test5_wordpress-wordpress1-1 bash -c "wp post delete $line --force --allow-root"
done <<< "$file_contents"

