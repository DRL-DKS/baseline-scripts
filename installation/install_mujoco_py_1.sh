#!/bin/bash 
echo "installing mujoco-py from source part 1"
export conda_env_name=rlbase
source ~/anaconda3/etc/profile.d/conda.sh
# conda init bash
conda deactivate
conda activate $conda_env_name
sudo apt update
sudo apt-get install patchelf
sudo apt-get install python3-dev build-essential libssl-dev libffi-dev libxml2-dev  
sudo apt-get install libxslt1-dev zlib1g-dev libglew1.5 libglew-dev python3-pip
git clone https://github.com/openai/mujoco-py
cd mujoco-py
pip install -r requirements.txt
pip install -r requirements.dev.txt
pip install -e . --no-cache
cd ..
rm -rf mujoco-py
echo "################"
echo "REBOOT IS NEEDED"


