docker run -d --name nginx-test1 -v nginx-volume:/usr/share/nginx/html/ -p 8082:80 nginx-custom-test1
docker ps -a
docker volume ls

