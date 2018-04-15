
yes | sudo apt-get update
yes | sudo apt-get upgrade

yes | sudo apt-get install g++ emacs tree curl git python-pip python2.7 python2.7-dev python3 python3-pip

#https://docs.nvidia.com/deeplearning/sdk/cudnn-install/index.html
#サイトからダウンロード
yes | sudo dpkg -i cuda-repo-ubuntu1604-9-0-local_9.0.176-1_amd64.deb
sudo apt-key add /var/cuda-repo-9-0-local/7fa2af80.pub
yes | sudo apt-get update
yes | sudo apt-get install cuda-9-0

tar -xzvf cudnn-9.0-linux-x64-v7.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h

#nvcc -V
#nvidia-smi
#が通ればオッケー
