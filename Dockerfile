FROM jupyter/tensorflow-notebook

# Windows Render related
USER root
RUN apt-get update -y && \ 
    apt-get install -y xvfb && \
    apt-get install -y python-opengl 

# Optional, needed for some environments
RUN apt-get install -y cmake && \
    apt-get install -y zlib1g zlib1g-dev 

USER ${NB_USER}

RUN pip install \
        gym \
        pyvirtualdisplay 

# Needed for some environments
RUN conda install swig
RUN pip install box2d-py atari_py

# Just for the convenience of testing
COPY ./example/gym-render.ipynb /home/${NB_USER}/gym-render.ipynb
COPY ./example/18_reinforcement_learning.ipynb /home/${NB_USER}/18_reinforcement_learning.ipynb


