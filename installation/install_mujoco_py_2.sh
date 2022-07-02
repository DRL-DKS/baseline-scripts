#!/bin/bash 
echo "installing mujoco-py from source part 2"
export conda_env_name=rlbase
source ~/anaconda3/etc/profile.d/conda.sh
# conda init bash
conda deactivate
conda activate $conda_env_name
sudo apt install libosmesa6-dev libgl1-mesa-glx libglfw3
sudo ln -s /usr/lib/x86_64-linux-gnu/libGL.so.1 /usr/lib/x86_64-linux-gnu/libGL.so
git clone https://github.com/openai/mujoco-py
cd mujoco-py/examples
pip install -U 'mujoco-py<2.2,>=2.1'
echo ""
echo ""
echo ">>>>>> activate environment: conda activate $conda_env_name"
echo ">>>>>> run python setting_state.py on mujoco-py examples to test"
echo ">>>>>> you may remove the folder mujoco-py afterwards"
