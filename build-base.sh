#!/bin/sh
docker login
docker build -f Dockerfile-Base -t hide1202/aspnetcore-node .
docker push hide1202/aspnetcore-node