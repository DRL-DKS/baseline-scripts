# https://docs.google.com/document/d/1eBvfKoczKmImUgoGMbqypODBXmI1bD91/edit
export mujoco_version=mujoco210
echo "why doesn't mujoco provide this? go figure... starting mujoco installation"
echo "removing current mujoco installation if exists"
rm -rf ~/.mujoco
mkdir -p ~/.mujoco
cd /tmp
echo "downloading $mujoco_version"
curl -O https://mujoco.org/download/$mujoco_version-linux-x86_64.tar.gz
tar -xf $mujoco_version-linux-x86_64.tar.gz
mv $mujoco_version ~/.mujoco/
echo "adding pointers of $mujoco_version to bashrc"
echo "" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/home/$USERNAME/.mujoco/$mujoco_version/bin" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia" >> ~/.bashrc
echo "export PATH="$LD_LIBRARY_PATH:$PATH"" >> ~/.bashrc
echo "export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libGLEW.so" >> ~/.bashrc
source ~/.bashrc

# echo
echo "test $mujoco_version installation by running test_mujoco_exec.sh"

