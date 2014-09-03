FROM ubuntu:14.04
MAINTAINER Dustin Clark <dusty@clarkda.com>

# ..

RUN apt-get update

# ..

RUN apt-get install -y openjdk-7-jre-headless curl supervisor

RUN mkdir -p /opt/minecraft/bin && \
    curl -o /opt/minecraft/bin/minecraft_server.jar https://s3.amazonaws.com/Minecraft.Download/versions/1.8/minecraft_server.1.8.jar
# ..

ADD conf/supervisor /etc/supervisor

# ..

RUN echo "eula=true" > /opt/minecraft/eula.txt

# ..

EXPOSE 25565

# ..

CMD ["/usr/bin/supervisord"]
