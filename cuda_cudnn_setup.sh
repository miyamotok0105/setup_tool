
#====================================================================
# cuda
#====================================================================
#cuda8.0

yes | sudo apt-get install g++

wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1404-8-0-local_8.0.44-1_amd64-deb
yes | sudo dpkg -i cuda-repo-ubuntu1404-8-0-local_8.0.44-1_amd64-deb
yes | sudo apt-get update
yes | sudo apt-get install cuda
yes | sudo apt-get install cuda-8-0

echo "#CUDA" >> ~/.bashrc
export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:$LD_LIBRARY_PATH"
source ~/.bashrc

#====================================================================
# cudnn
#        you have to get cudnn account.and dowonload cudnn.tgz.
#====================================================================
wget https://www.dropbox.com/s/hn0mheafgt9bi3o/cudnn-8.0-linux-x64-v5.1.tgz
tar -zxf cudnn-8.0-linux-x64-v5.1.tgz
cd cuda
sudo cp lib64/* /usr/local/cuda/lib64/
sudo cp include/cudnn.h /usr/local/cuda/include/

echo "#cudnn" >> ~/.bashrc
echo "export CFLAGS=-I/path/to/cudnn/include" >> ~/.bashrc
echo "export LDFLAGS=-L/path/to/cudnn/lib" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/path/to/cudnn/lib:$LD_LIBRARY_PATH" >> ~/.bashrc
source ~/.bashrc
