# docker-instructions
docker commands

```docker
docker build -t "name/machine" .
docker run -p "port:port" -d "name/machine"
docker images
docker ps
docker stop "machine"
docker-compose up
```

docker remove
```
docker rmi -f <id-images>
docker container rm <id-container>

systemctl stop docker 
docker volumes rm <id-volumes>
```

# Clear all images docker

### Commands linux

clone reposity on your machine

```
git clone https://github.com/daniellx42/docker-instructions.git
```

Enter in Folder

```
cd docker-instructions
```

Of permission

```
chmod +x ./clear-all-images-docker.sh
```

Run the file

```
./clear-all-images-docker.sh
```
