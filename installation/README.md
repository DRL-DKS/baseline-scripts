# Full Installation of Stable Baselines3 without Docker

## Steps
0) turn all scripts as executables ``` sudo chmod +x *```
1) Create a conda environment, set python version and conda env name inside the script
``` 
./setting_conda_env.sh 
```
2) Install Mujoco (read more at https://github.com/openai/mujoco-py/)
``` 
./install_mujoco
```
``` 
./install_mujoco_py_1
```
Reboot computer and test (follow instructions at the end of the execution)
``` 
./install_mujoco_py_2
```
Test with some scripts in testing_installation/
3) Install gym all (read more at https://github.com/openai/gym)
```
./install_gym_all
```
4) Finnally install stable-baselines3 (read more at https://github.com/DLR-RM/stable-baselines3)
```
install_stable-baselines3_all
```
5) Enjoy a full stable-baselines3 installation :snake: 

####  Wishlist
- Maybe use the bash scripts for future dockerfiles