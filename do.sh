#!/bin/bash

docker build -t ramon /home/ubuntu/ramone/
docker run -d --rm -p80:80 ramon
