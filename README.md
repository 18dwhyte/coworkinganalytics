# Coworking Space Service Extension
The Coworking Space Service is a set of APIs that enables users to request one-time tokens and administrators to authorize access to a coworking space. This service follows a microservice pattern and the APIs are split into distinct services that can be deployed and managed independently of one another.

## Getting Started

### Dependencies
#### Local Environment
1. Python Environment - run Python 3.6+ applications and install Python dependencies via `pip`
2. Docker CLI - build and run Docker images locally
3. `kubectl` - run commands against a Kubernetes cluster
4. `helm` - apply Helm Charts to a Kubernetes cluster

#### Remote Resources
1. AWS CodeBuild - build Docker images remotely
2. AWS ECR - host Docker images
3. Kubernetes Environment with AWS EKS - run applications in k8s
4. AWS CloudWatch - monitor activity and logs in EKS
5. GitHub - pull and clone code


### Deployment Workflow

Images are built using AWS CodeBuild with buildspec.yml file. 
Note: Some of the variables shown in the buildspec.yml and housed within the ENV Variables with the CodeBuild Project settings
1. AWS CodeBuild will pull the source repository and Docker base image.
2. It will then turn the application into a Docker image.
3. The image will be labelled with a Tag number. 
4. The Docker image will be managed through AWS ECR


### Deployment Changes

1. Merge your changes to the source repository
2. Once changes are pushed, start a new build through AWS CodeBuild
3. Ensure the build succeeds. If any faliures are encounterd look through the logs to see what failed
4. The Docker image will be managed through AWS ECR


