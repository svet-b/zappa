# Zappa

Docker image for Zappa used with GitLab.com to deploy to AWS Serverless.

Note: Requires docker to be installed and running if you wish to build it

## To build it

Note: you have to be in the directory one level up. This also applied the tag

`docker image build --rm -t ammp/zappa:lean zappa`

## Test the build

`docker run -it ammp/zappa:lean`

## Push the build

`docker push ammp/zappa:lean`
