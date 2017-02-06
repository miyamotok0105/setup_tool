#!/bin/bash
#====================================================================
# apt update
#====================================================================
yes | sudo apt-get update
yes | sudo apt-get upgrade


#====================================================================
# jp mode desktop music folder.
#====================================================================
env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update


#====================================================================
# 「Ctrl+Alt+Backspace」
#====================================================================
#sudo dpkg-reconfigure keyboard-configuration


#====================================================================
# char
#====================================================================
gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8','CURRENT','SHIFT_JIS','EUC-JP','ISO-2022-JP','UTF-16']"
gsettings set org.gnome.gedit.preferences.encodings shown-in-menu "['UTF-8','SHIFT_JIS','EUC-JP','ISO-2022-JP','UTF-16']"


#====================================================================
# add plugin
#====================================================================
yes | sudo apt-get install gedit-plugins


#====================================================================
# Ubuntu Web Apps(Gmail/Amazon/Twitter/Facebook)delete
#====================================================================
yes | sudo apt-get remove unity-webapps-common xul-ext-unity xul-ext-websites-integration


#====================================================================
# updatedb
#====================================================================
yes | sudo chmod 644 /etc/cron.daily/mlocate
#もとに戻すならsudo chmod 755 /etc/cron.daily/mlocate


#====================================================================
# software
#====================================================================

#
yes | sudo apt-get install tree curl
yes | sudo apt-get install git
yes | sudo apt-get install emacs
#yes | sudo apt-get install vim vim-gnome
yes | sudo apt-get install imagemagick pdftk
yes | sudo apt-get install flashplugin-installer

# heroku-toolbelt
#wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh


#====================================================================
# Python
#====================================================================
yes | sudo apt-get install python-pip python2.7 python2.7-dev python3
yes | sudo apt-get install build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev
#yes | sudo pip install virtualenv
#yes | sudo pip install virtualenvwrapper


## Virtualenvwrapper
#if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
#    export WORKON_HOME=$HOME/.virtualenvs
#    source /usr/local/bin/virtualenvwrapper.sh
#fi


#====================================================================
# pip
#====================================================================
# trash-cli : http://tukaikta.blog135.fc2.com/blog-entry-214.html
yes | sudo apt-get install python-pip
yes | sudo pip install trash-cli
yes | sudo pip install -U setuptools

#====================================================================
# cuda
#====================================================================
yes | sudo apt-get install g++

wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1404-8-0-local_8.0.44-1_amd64-deb
yes | sudo dpkg -i cuda-repo-ubuntu1404-8-0-local_8.0.44-1_amd64-deb
yes | sudo apt-get update
yes | sudo apt-get install cuda
yes | sudo apt-get install cuda-8-0


#====================================================================
# other
#====================================================================
echo ‘other’
#echo 'Pycharm'
#echo 'dropbox'
#echo 'virtualbox,vagrant : http://qiita.com/seizans/items/ef220c98fde6dbfbee32'


#====================================================================
# cudnn
#        you have to get cudnn account.and dowonload cudnn.tgz.
#====================================================================
#tar -zxf cudnn-8.0-linux-x64-v5.1.tgz
#cd cuda
#sudo cp lib64/* /usr/local/cuda/lib64/
#sudo cp include/cudnn.h /usr/local/cuda/include/

#====================================================================
# chainer
#====================================================================

#CUDA_PATH=/opt/nvidia/cuda pip install chainer

