#!/bin/bash

MC_HOME=/opt/minecraft

cd $MC_HOME && java -Xmx1024M -Xms1024M -jar bin/minecraft_server.jar nogui
