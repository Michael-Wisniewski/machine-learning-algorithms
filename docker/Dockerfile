FROM jupyter/base-notebook:ubuntu-20.04

COPY jupyter_notebook_config.py /etc/jupyter/

RUN conda install -c conda-forge jupyter_contrib_nbextensions && \
    conda install -c anaconda numpy && \
    conda install -c conda-forge matplotlib && \
    jupyter nbextension enable toc2/main
