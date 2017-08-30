#!/bin/sh
docker login
docker build -f Dockerfile-Base -t hide1202/aspnetcore-node:0.1 .
docker push hide1202/aspnetcore-node:0.1