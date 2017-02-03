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
sudo apt-get install gedit-plugins


#====================================================================
# Ubuntu Web Apps(Gmail/Amazon/Twitter/Facebook)delete
#====================================================================
yes | sudo apt-get remove unity-webapps-common xul-ext-unity xul-ext-websites-integration


#====================================================================
# updatedb
#====================================================================
sudo chmod 644 /etc/cron.daily/mlocate
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
yes | sudo pip install trash-cli


#====================================================================
# other
#====================================================================
echo ‘other’
#echo 'Pycharm'
#echo 'dropbox'
#echo 'virtualbox,vagrant : http://qiita.com/seizans/items/ef220c98fde6dbfbee32'

