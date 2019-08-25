# craete an image
# spring-boot-web-0.0.1-SNAPSHOT.jar must be in the tmp folder (dot - to look in the current dir for the Dockerfile)
docker build -t spring-boot-docker .


# run container
docker run -d -p 8080:8080 spring-boot-docker


#run container without exiting it
docker run -d -p 8080:8080 spring-boot-docker tail -f /dev/null


# Loging interactively to docker
docker exec -it <docker_name> bash


# start mysql docker app
docker run --name jt-mysql -e MYSQL_ROOT_PASSWORD=password -d mysql
exec -it jt-mysql bash
mysql --user=root -p