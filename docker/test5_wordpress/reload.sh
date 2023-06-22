echo "Docker Down ..."
docker compose down
echo "Docker Volume Remove ..."
docker volume rm test5_wordpress_db1_data
docker volume rm test5_wordpress_php1_data
docker volume rm test5_wordpress_redis1_data
docker volume rm test5_wordpress_wordpress1_content
echo "Docker Up ..."
docker compose up -d
echo "Docker List ..."
docker ps -a
# sleep 20
echo "Wordpress Host Config ..."
bash commands_host_ver3_temp.sh
# bash commands_host_ver3_temp_test1.sh
echo "Wordpress Theme Config ..."
bash commands_host_ver3_temp_test5.sh
# bash do5.sh
echo "Wordpress Footer Config ..."
bash commands_host_ver3_temp_footer.sh
echo "PHP Host Config ..."
bash commands_host_ver3_temp_php.sh
echo "Wordpress Language Config ..."
bash commands_host_ver3_temp_make_english.sh
bash commands_host_ver3_temp_make_farsi.sh
