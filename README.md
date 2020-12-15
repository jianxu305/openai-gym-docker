# An Open AI Gym docker that can render on Windows
This image starts from the jupyter/tensorflow-notebook, and has box2d-py and atari_py installed.  Therefore, many environments can be played.

## Prerequisite
* [Docker Desktop](https://www.docker.com/products/docker-desktop)


## Description
* [Dockerfile](./Dockerfile): Dockerfile to build the OpenAI Gym image
* [example](./example): Some example notebooks for testing
* [example/env_render.ipynb](./example/env_render.ipynb): Test Gym environments rendering
* [example/18_reinforcement_learning.ipynb](./example/18_reinforcement_learning.ipynb): This is a copy from Chapter 18 in Géron, Aurélien's book: Hands-On Machine Learning with Scikit-Learn, Keras, and TensorFlow.  Source code is [here](https://github.com/ageron/handson-ml2/blob/master/18_reinforcement_learning.ipynb) in GitHub.

## Command to build the image
$ docker build -t <openai_gym_docker>:<v1.0> .
