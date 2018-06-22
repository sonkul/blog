# WebPage

## Requirements
* Docker

## Installation
* Clone this repo and go inside it.
* To build docker image, run `docker build -t <image-name> .`
* To install the gems, open a shell inside the container using `docker run -v $(pwd):/webpage -p 4000:4000 -it <image-name> /bin/bash`.
* Inside the shell, run `bundle install`.
* After gems installation, exit the container and now run it in the detached mode using `docker run -v $(pwd):/webpage -p 4000:4000 -d <image-name>`.
* To track the logs, first extract container id using `docker ps` then use command `docker logs <container-id>`.
* To access the bash shell of running container, use `docker exec -it <container-id bash`.
* To push the updated source code to github, run `bash init.sh deploy:source`.
* To push the update site to github, run `bash init.sh deploy:site`.

## Credit
[Typing Jekyll Template](https://github.com/williamcanin/typing-jekyll-template)
