echo "installing stable-baselines3 all"
export conda_env_name=rlbase
source ~/anaconda3/etc/profile.d/conda.sh
# conda init bash
conda deactivate
conda activate $conda_env_name
pip install stable-baselines3[extra]
echo ""
echo ""
echo ">>>> pytorch installation might not work out of the box"
echo ">>>> run "stable-baselines3_test.py" to test"
echo ">>>> check GPU/CUDA versioning depending on the GPU in pytorch page"

#to install pytorch for RTX 3080 and up uncomment for ML-agents
# pip3 install torch==1.8.1+cu111 -f https://download.pytorch.org/whl/torch_stable.html

#to install pytorch for RTX 3080 and up uncomment for recommended stable-baselines >1.11.1
# pip3 install torch==1.12.0+cu113 -f https://download.pytorch.org/whl/torch_stable.html
