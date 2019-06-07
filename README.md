# devops_docker_all_in_one
Docker: nginx - mariadb - php - httpd
<!-- requirement  -->
Install docker
Install docker-compose
<!-- Run command -->
docker-compose up --force-recreate --build
<!-- Run command with file -->
docker-compose -f docker-compose-apache.yml up --force-recreate --build
docker-compose -f docker-compose-nginx.yml up --force-recreate --build
<!-- docker command push an image -->
<!-- docker tag local-image:tagname reponame:tagname -->
<!-- docker push reponame:tagname -->