

#====================================================================
# tensorflow
#====================================================================
#python2.7 linux cuda8.0
#if you see more.
#https://github.com/tensorflow/tensorflow/blob/master/tensorflow/g3doc/get_started/os_setup.md

yes | sudo apt-get install python-pip python-dev

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-1.0.0rc2-cp27-none-linux_x86_64.whl

yes | sudo pip install --upgrade $TF_BINARY_URL

