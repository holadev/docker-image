#!/bin/bash

docker stop apache
docker rm apache
docker build -t holadevdocker/apache-redirects:latest -f Dockerfile .
docker run -d -p 80:80 --name apache holadevdocker/apache-redirects