# Security Cam
A fun 2 hour project for setting up a web camera based security system. Key features include:
* Motion based capture - doesn't flood your hard drive with recordings
* Use existing cameras of your pc to record videos.
* Listener script to only start the node when you are awy i.e screen is locked
   > Script depends on `gnome` and runs with bash.

## Pre-requisites
* [Docker](https://docs.docker.com/engine/install/ubuntu/)
* [Docker Compose](https://docs.docker.com/compose/install/)


## Setup Instructions
No specific instructions. Just make sure:
* your camera is connected and is available on `/dev/videoXX` where `XX` is the camera number
* change the value in `docker-compose.yml` to reflect this number.
* Run the script `./lstener.sh`