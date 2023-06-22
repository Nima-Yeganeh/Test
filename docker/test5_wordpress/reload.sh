docker compose down
docker volume rm test5_wordpress_db1_data
docker volume rm test5_wordpress_redis1_data
docker volume rm test5_wordpress_wordpress1_content
docker compose up -d
docker ps -a
# sleep 20
bash commands_host_ver3_temp.sh
# bash commands_host_ver3_temp_test1.sh
bash commands_host_ver3_temp_test5.sh
# bash do5.sh
bash commands_host_ver3_temp_footer.sh
