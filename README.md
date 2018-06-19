# Zappa

Docker image for Zappa used with GitLab.com to deploy to AWS Serverless.

Note: Requires docker to be installed and running if you wish to build it

## To build it

Note: you have to be in the directory one level up

`docker image build --rm zappa`

## Tag the build

`docker tag 9d4427bce515 peregrinius/zappa:latest`

## Test the build

`docker run -it peregrinius/zappa:latest`

## Push the build

`docker push peregrinius/zappa:latest`