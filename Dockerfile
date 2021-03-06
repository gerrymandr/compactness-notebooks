FROM jupyter/scipy-notebook
LABEL maintainer="glram@mit.edu"
RUN conda install -c conda-forge geopandas
RUN conda install -c plotly plotly
RUN conda install scikit-image
RUN pip install Pillow
RUN pip install boto3
RUN pip install python-dateutil
ADD https://www2.census.gov/geo/tiger/TIGER2016/CD/tl_2016_us_cd115.zip /home/jovyan/shapes-archive.zip

USER root

RUN mkdir ~/shapes \
    && mv ~/shapes-archive.zip ~/shapes \
    && cd ~/shapes\
    && unzip shapes-archive.zip \
    && rm shapes-archive.zip

EXPOSE 8888
