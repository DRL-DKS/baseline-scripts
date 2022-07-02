#!/bin/bash 
# requires anaconda3 installation
export conda_env_name=rlbase
export python_version=3.8
echo "setting up conda environment"
echo "remove existing env..."
conda remove -n $conda_env_name --all --yes --quiet
echo "creating env $conda_env_name..."
conda create -n $conda_env_name python=$python_version --yes
