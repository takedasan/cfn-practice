#!/bin/sh

$(aws ecr get-login --no-include-email --region us-east-1)
docker build -t sample-repository .
docker tag sample-repository:latest 273930194378.dkr.ecr.us-east-1.amazonaws.com/sample-repository:latest
docker push 273930194378.dkr.ecr.us-east-1.amazonaws.com/sample-repository:latest