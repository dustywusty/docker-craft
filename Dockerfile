FROM ubuntu:14.04
MAINTAINER Dustin Clark <dusty@clarkda.com>

# ..

RUN apt-get update

# ..

RUN apt-get install -y openjdk-7-jre-headless

RUN mkdir -p /opt/minecraft/bin && \
    wget -p /opt/minecraft/bin https://s3.amazonaws.com/Minecraft.Download/versions/1.7.10/minecraft_server.1.7.10.jar

# ..

EXPOSE 25565

# ..

ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "/opt/minecraft/bin/minecraft_server.jar", "nogui"]
