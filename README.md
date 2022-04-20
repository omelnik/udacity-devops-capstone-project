# Udacity Capstone Project: Cloud DevOps Engineer Nanodegree
[![CircleCI](https://circleci.com/gh/omelnik/udacity-devops-capstone-project/tree/main.svg?style=svg)](https://circleci.com/gh/omelnik/udacity-devops-capstone-project/tree/main)

## Submission

| CRITERIA | SPECIFICATIONS | SCREENSHOT |
| ----------- | ----------- | ----------- |
| Use image repository to store Docker images   | The project uses a centralized image repository to manage images built in the project. After a clean build, images are pushed to the repository.| ![Screenshot](screenshots/SCREENSHOT-1.png)|
| Execute linting step in code pipeline   | Code is checked against a linter as part of a Continuous Integration step (demonstrated w/ two screenshots)| ![Screenshot](screenshots/SCREENSHOT-2-01.png) ![Screenshot](screenshots/SCREENSHOT-2-02.png)|
| Build a Docker container in a pipeline   | The project takes a Dockerfile and creates a Docker container in the pipeline.| ![Screenshot](screenshots/SCREENSHOT-3.png)|
| The Docker container is deployed to a Kubernetes cluster   | The cluster is deployed with CloudFormation or Ansible. This should be in the source code of the student’s submission.| ![Screenshot](screenshots/SCREENSHOT-4.png)|
| Use Blue/Green Deployment or a Rolling Deployment successfully   | The project performs the correct steps to do a blue/green or a rolling deployment into the environment selected. Student demonstrates the successful completion of chosen deployment methodology with screenshots. | ![Screenshot](screenshots/SCREENSHOT-5.png) ![Screenshot](screenshots/SCREENSHOT-6.png)|

## Kubernetes Deployement
To deploy the latest image on the kubernetes cluster need to run this commands:

```bash
kubectl rollout restart deployment.apps/fastapi-app-deployment
```

## Useful Resources:
- https://betterprogramming.pub/how-to-use-docker-in-an-amazon-ec2-instance-5453601ec330
