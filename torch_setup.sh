

#====================================================================
# torch
#====================================================================

git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch
bash install-deps

yes | ./install.sh

source ~/.bashrc


