# Apache redirects

This package contains the configuration to launch a docker container with a web server (apache httpd) that contains a set of legacy virtualhosts with their corresponding htaccess.

This container runs on AWS

## Structure

In the latest directory we find the Apache configurations and the directories with the vhosts. Also the dockerfile that is responsible for carrying the configuration in the build.

## Install in local

Requires docker and docker-compose

``` bash
docker-compose up --build
```

## Usage in local

This is an example. Must returns a redirect

``` bash
curl -Is 'http://0.0.0.0:8080' -H "Host: ca.hellomagazine.com"
```

Some real requests

```bash
curl -Is 'http://0.0.0.0:8080/film/2017092142594/im-a-celeb-2017-rumoured-line-up/' -H "Host: us.hellomagazine.com"
curl -Is 'http://0.0.0.0:8080/royalty/505525/disappointing-news-for-princess-annes-son-peter-phillips-revealed/' -H "Host: us.hellomagazine.com"
curl -Is 'http://0.0.0.0:8080/tags/prince-william/' -H "Host: ca.hellomagazine.com"
```

## Procedure to make changes in image and redeploy in AWS

1. Make the necessary changes to the project, vhosts, configurations, etc. Perform the commit and push to the project.
2. Check which is the latest built version of the image here: [https://hub.docker.com/repository/docker/holadevdocker/apache-redirects/general] to know the increase version
3. Build the version and latest images (see below), and upload to dockerhub
4. Go to AWS/ECS service [https://eu-south-2.console.aws.amazon.com/ecs/v2/clusters/apache-redirects/services/apache-redirects-service/health?region=eu-south-2] and update service changing only "Force new deployment"
5. Review the deploy monitor

## Build image and upload to dockerhub

We need to build two versions of image, the tagged version with number and the latest. They are the same image but the first is to possible rollback and the latest is for AWS get.

Requires that we make a docker login to access to dockerhub

Build the image with version number tag (see the last version to increase them)

```bash
docker build -t holadevdocker/apache-redirects:1.x.x -f Dockerfile .
```

Build the image with latest tag

```bash
docker build -t holadevdocker/apache-redirects:latest -f Dockerfile .
```

Upload to dockerhub both images

```bash
docker push holadevdocker/apache-redirects:1.x.x

docker push holadevdocker/apache-redirects:latest
```
