# Full Installation of Stable Baselines3 without Docker

## Test
0) turn all scripts as executables ``` sudo chmod +x *```
1) Test mujoco seperately just as an executable (read more at https://github.com/openai/mujoco-py/)
``` 
./test_mujoco_exec.sh
```
2) On the created conda environment from the installation folder, test stable-baselines3 (read more at https://github.com/DLR-RM/stable-baselines3)
``` 
python stable-baselines3_test.py
```

####  Wishlist
- Maybe use the bash scripts for future dockerfiles