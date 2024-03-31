#!/bin/bash

# 1. build docker images from docker file at current dir
docker build -t my-httpd-image . 

# 2. check docker images
docker images

# 3. run container from image at port 80 
docker run -d -p 8080:80 --name my-httpd-container my-httpd-image


