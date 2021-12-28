#!/bin/bash

# stop all containers
echo '##################################################'
echo 'Stopping all containers'
echo '##################################################'
docker stop $(docker ps -aq)

# remove all stopped containers
echo '##################################################'
echo 'Removing containers'
echo '##################################################'
docker rm $(docker ps -aq)

# remove all images
echo '##################################################'
echo 'Removing images'
echo '##################################################'
docker rmi -f $(docker images -q)

# remove all stray volumes if any
echo '##################################################'
echo 'Revoming docker container volumes - if any'
echo '##################################################'
docker volume rm $(docker volume ls -q)

# clear the docker internal networks
echo '##################################################'
echo 'Revoming docker internal networks - if any'
echo '##################################################'
docker system prune -f
