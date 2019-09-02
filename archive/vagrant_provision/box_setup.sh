#!/usr/bin/env bash

echo "\ 
 ____ ____ ____ ____ ____ _________ ____ ____ ____ ____ ____ 
||h |||e |||l |||l |||o |||       |||t |||h |||e |||r |||e ||
||__|||__|||__|||__|||__|||_______|||__|||__|||__|||__|||__||
|/__\|/__\|/__\|/__\|/__\|/_______\|/__\|/__\|/__\|/__\|/__\|
"

### Install Python 3 with Miniconda ###

echo '... installing miniconda ...'
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
rm -rf Miniconda3-latest-Linux-x86_64.sh
export PATH=/home/vagrant/miniconda3/bin:$PATH
echo '# Miniconda Python' >> .bashrc
echo "export PATH=/home/vagrant/miniconda3/bin:$PATH" >> .bashrc
conda init bash

### install conda build ###

echo '... installing conda-build ...'
conda install conda-build

### create conda env ###

echo '... build conda env ...'
#conda deactivate
#conda env create -f /home/vagrant/environment.yml
conda create -n mypy36 python=3.6 numpy pandas jupyterlab

### conda install my_utils ###

echo '... conda install my_utils ...'
conda develop -n mypy36 /home/vagrant/packages/my_utils

### pip install awscli ###

echo '... install awscli ...'
pip install awscli --upgrade --user


