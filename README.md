# Udacity Capstone Project: Cloud DevOps Engineer Nanodegree
[![CircleCI](https://circleci.com/gh/omelnik/udacity-devops-capstone-project/tree/main.svg?style=svg)](https://circleci.com/gh/omelnik/udacity-devops-capstone-project/tree/main)

# Kubernetes Deployement
To deploy the latest image on the kubernetes cluster need to run this commands:

```bash
kubectl rollout restart deployment.apps/fastapi-app-deployment
```

## Useful Resources:
- https://betterprogramming.pub/how-to-use-docker-in-an-amazon-ec2-instance-5453601ec330
