FROM jupyter/minimal-notebook

LABEL maintainer="Lorenzo Carnevale"
LABEL email="lcarnevale@unime.it"
LABEL institute="University of Messina"
LABEL version="1.0"

ARG HOME=/home/jovyan/work

COPY requirements.txt $HOME
WORKDIR $HOME
RUN pip install -r requirements.txt