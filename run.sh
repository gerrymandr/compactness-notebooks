#!/bin/bash

docker run -it -p 8888:8888 -v $PWD/Notebooks:/home/jovyan/Notebooks -w="/home/jovyan/" mggg-compact
