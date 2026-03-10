#!/bin/sh

#run this on your own server
# don't run it on 0.0.0.0 or just -p :port

docker run -d -p 172.17.0.1:5000:5000 --restart always --name registry registry:2
