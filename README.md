# devops_docker_all_in_one
Docker: nginx - mariadb - php - httpd
<!-- requirement  -->
Install docker
Install docker-compose
<!-- Run command -->
# Stop all container
docker-compose stop
# Remove stopped container (important!)
docker-compose rm -f
# Start all container
docker-compose up
<!-- Run command with file -->
docker rmi $(docker images -f "dangling=true" -q)
docker-compose up --force-recreate --build
docker-compose -f docker-compose-apache.yml up --force-recreate --build
docker-compose -f docker-compose-nginx.yml up --force-recreate --build
<!-- docker command push an image -->
<!-- docker tag local-image:tagname reponame:tagname -->
<!-- docker push reponame:tagname -->
<!-- refer to https://github.com/CentOS/CentOS-Dockerfiles -->

<!-- docker tag f285261d116d laravel-on-k8s:v1
docker tag laravel-on-k8s:v1 vunguyenvu35/laravel-on-k8s:v1
docker push vunguyenvu35/laravel-on-k8s:v1 -->