FROM jupyter/scipy-notebook
LABEL maintainer="gabe.luis.ramirez@gmail.com"
RUN conda install -c conda-forge geopandas
ADD https://www2.census.gov/geo/tiger/TIGER2016/CD/tl_2016_us_cd115.zip /home/jovyan/shapes.zip

USER root

RUN unzip ~/shapes \
    && rm ~/shapes.zip

EXPOSE 8888
