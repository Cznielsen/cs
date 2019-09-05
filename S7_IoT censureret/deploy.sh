#!/bin/bash
docker -H $FLUTTERSHY:2376 build -t flutter . && docker -H $FLUTTERSHY:2376 run -p 8080:8080 --privileged --rm -ti flutter
#docker build -t flutter . && docker run -d -p 8080:8080 --privileged --rm -ti flutter
