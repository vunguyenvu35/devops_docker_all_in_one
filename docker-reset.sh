docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -f "dangling=true" -q)
docker rmi $(docker images -q)
systemctl restart docker