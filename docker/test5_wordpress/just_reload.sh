docker compose down
docker volume rm test5_wordpress_db1_data
docker volume rm test5_wordpress_redis1_data
docker volume rm test5_wordpress_wordpress1_content
docker compose up -d
docker ps -a

