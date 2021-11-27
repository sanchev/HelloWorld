#!/bin/bash

# Pull new changes
#git pull

# Prepare Jar
mvn clean
mvn package

# Ensure, that docker-compose stopped
docker-compose stop

# Add environment variables
export MESSAGE_TEXT=$1

# Start new deployment
docker-compose up --build