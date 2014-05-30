## Ubuntu Desktop (GNOME) Dockerfile


This repository contains *Dockerfile* of Ubuntu Desktop (GNOME) for [Docker](https://www.docker.io/).


### Dependencies

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.io/).

	For an Ubuntu 14.04 host the following commands will get you up and running:

	`sudo apt-get -y update && \
	sudo apt-get -y install docker.io && \
	sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker && \
	sudo restart docker.io`


2. You can build an image from the Dockerfile:
	`sudo docker build -t="dockerfile/ubuntu-desktop-gnome" github.com/intlabs/Docker-Ubuntu-Desktop-Gnome`)


### Usage
* Change the port number to run multiple instances on the same host (rememeber to open the ports for tcp ingress)

	This will run and drop you into a session.
    `sudo docker run -it --rm -p 5901:5901 dockerfile/ubuntu-desktop-gnome`

    or for silent running:
    `sudo docker run -it -d -p 5901:5901 dockerfile/ubuntu-desktop-gnome`

    You can use the following command from within the container to kill the vnc server:

    `USER=root vncserver -kill :1`

    Then run the following command from within the container to restart start the vnc server:

    `USER=root vncserver :1 -geometry 1024x768 -depth 24`


Connect to `vnc://<host>:5901` via VNC client. currently the passweord is hardcoded to "acoman"