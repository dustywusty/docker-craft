docker-craft
============

docker container for our minecraft server

usage
============
```
docker run -d -p 25565:25565 -v /var/docker/minecraft/world:/opt/minecraft/world -v /var/docker/minecraft/logs:/opt/minecraft/logs minecraft
```
