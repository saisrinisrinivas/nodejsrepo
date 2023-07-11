#!/bin/bash

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/s9e0w9o5
docker tag demojenkins:latest public.ecr.aws/s9e0w9o5/demojenkins:latest
docker push public.ecr.aws/s9e0w9o5/demojenkins:latest
