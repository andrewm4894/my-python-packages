ARG BASE_CONTAINER=gcr.io/kubeflow-images-public/tensorflow-1.13.1-notebook-cpu:v0.5.0
#ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="myemail@email.com"
LABEL version="01"

#USER $NB_UID

## install jupyter
#RUN pip install jupyterlab

## install specific package versions i want to use here
#RUN conda install --quiet --yes \
#    pandas \
#    matplotlib \
#    boto3 && \
#    conda remove --quiet --yes --force qt pyqt && \
#    conda clean -tipsy && \
#    fix-permissions $CONDA_DIR && \
#    fix-permissions /home/$NB_USER

## install conda build 
#RUN conda install --quiet --yes conda-build

## copy over local files for my package
#ADD packages/ /home/$NB_USER/packages/

## add my_utils package to conda
#RUN conda develop /home/$NB_USER/packages/my_utils

## some additional conda installs
#RUN conda install -y awscli

# run as root user
USER root

# run jupyter lab
ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]