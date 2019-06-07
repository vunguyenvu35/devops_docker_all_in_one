# devops_docker_all_in_one
Docker: nginx - mariadb - php - httpd

<!-- requirement  -->
Install docker
Install docker-compose


<!-- Run command -->
docker-compose up --force-recreate --build


<!-- docker command push an image -->
docker tag local-image:tagname reponame:tagname
docker push reponame:tagname