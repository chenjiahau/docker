#!/bin/bash

docker build -t simple_server .
docker run -p 8080:3000 -d --rm -v logs:/app/logs -v $(pwd):/app --name simple_server simple_server

./showlog.sh
