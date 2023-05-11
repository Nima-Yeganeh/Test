docker --help
docker images
docker volume ls
docker network ls
docker pull alpine
docker pull python
netstat -tupln
docker image ls
docker ps -a
docker rmi redis -f
docker image history redis
docker attach NAME
docker run php:apache
docker run -d php:apache
ps -ef
docker ps --all
docker run -d alpine
docker run -d --name test1 php:apache
docker image inspect php:apache
docker image inspect php:apache | grep -A 2 ExposedPorts
docker pull mariadb
docker run -dit --name web01 --publish 444:80 php:apache
docker run -dit --name web02 -p 555:80 php:apache
docker inspect web01 | grep -i address
curl -v telnet://web01:80
docker exec -it web01 sh
