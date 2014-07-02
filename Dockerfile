FROM ubuntu:14.04
MAINTAINER Dustin Clark <dusty@clarkda.com>

# ..

RUN apt-get update

# ..

RUN apt-get install -y openjdk-7-jre-headless curl supervisor

RUN mkdir -p /opt/minecraft/bin && \
    curl -o /opt/minecraft/bin/minecraft_server.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.7.10/minecraft_server.1.7.10.jar

# ..

COPY scripts/minecraft_server.sh /opt/minecraft/bin/server.sh

# ..

RUN echo "eula=true" > /opt/minecraft/eula.txt

# ..

EXPOSE 25565

# ..

ENTRYPOINT ["/opt/minecraft/bin/server.sh"]
