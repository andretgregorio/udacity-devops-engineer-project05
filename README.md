[![andretgregorio](https://circleci.com/gh/andretgregorio/udacity-devops-engineer-project05.svg?style=svg)](https://app.circleci.com/pipelines/github/andretgregorio)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Setup the Environment

* Create a virtualenv and activate it. It's possible to create the virtual env with `make setup`.
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Files in this repo:

The project has a few shell script files to help managing the resources.

* **run_docker.sh**: builds a docker image and runs it, mapping the port 8000 of you computer.
* **uploaddocker.sh**: tags and upload the docker image to a repo in docker hub. You may change the docker hub repository to meet one of your own.
* **run_kubernets.sh**: deploy the application to a Kubernets node.
