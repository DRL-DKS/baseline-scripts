echo "installing gym all"
export conda_env_name=rlbase
source ~/anaconda3/etc/profile.d/conda.sh
# conda init bash
conda deactivate
conda activate $conda_env_name
# this comes directly from setup.py on github.com/openai/gym
# we dont do pip install gym[all] because it searches all extras
# extras = {
#     "atari": ["ale-py~=0.7.5"],
#     "accept-rom-license": ["autorom[accept-rom-license]~=0.4.2"],
#     "box2d": ["box2d-py==2.3.5", "pygame==2.1.0"],
#     "classic_control": ["pygame==2.1.0"],
#     "mujoco_py": ["mujoco_py<2.2,>=2.1"],
#     "mujoco": ["mujoco==2.2.0", "imageio>=2.14.1"],
#     "toy_text": ["pygame==2.1.0"],
#     "other": ["lz4>=3.1.0", "opencv-python>=3.0", "matplotlib>=3.0"],
# }
# we installed mujoco and mujoco-py seperately because it was installing a deprecated 1.50.1.0
# this way we get the newest mujoco library
pip install gym
pip install gym[atari]
pip install gym[accept-rom-license]
pip install gym[box2d]
pip install gym[classic_control]
pip install gym[toy_text]
pip install gym[other]