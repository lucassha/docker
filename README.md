# docker
general notes on how to use docker

#### Going to just assume I'm using an ubuntu image or container the entire time

Pull an image

* docker pull ubuntu

<hr>

Run an image and log into the shell. -i makes it interactive. -t allocates a psuedo tty.

* docker run -it ubuntu bash

<hr>

Run an image but do not log into the shell

* docker run -itd ubuntu bash

<hr>

Show current active containers

* docker ps

<hr>

Show all containers

* docker ps -a

<hr>

#### For examples below, my container's name is `silly_mcnulty`

Show information about the container in json format. use grep to find specific fields. 

* docker inspect silly_mcnulty

<hr>

Log into the container's shell that is already running

* docker attach silly_mcnulty

<hr>

Stop the container 

* docker stop silly_mcnulty

<hr>

Restart a container (using docker ps -a to show the non running container)

docker restart silly_mcnulty

<hr>

Create an image with preconfigured settings from an already created instance (i.e. - you installed apache2 and want to always launch a container with it already running)

docker commit -m 'apache2 installed and running' -a lucassha silly_mcnulty ubunapache:v1

-m for the message. -a for the username. last portion is the name of the new image.

<hr>

Create a port passthrough during bootup of an image. Use elinks to check it's functional.

* docker run -dp 2345:80 nginx

<hr>




