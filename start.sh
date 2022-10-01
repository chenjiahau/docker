#!/bin/bash

docker build -t simple_server .
docker run -p 8080:3000 -d --rm --name simple_server simple_server
