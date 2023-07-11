#!/bin/bash

git clone -b main 'https://github.com/saisrinisrinivas/nodejsrepo.git'
docker build -t public.ecr.aws/s9e0w9o5/demojenkins:latest
