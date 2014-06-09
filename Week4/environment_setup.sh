#!/bin/bash

#scp hello.txt awshost1:~/
#rsync -avp src dest (same format as scp in examples above)

#environment setup

cd $HOME
sudo apt-get install -y git-core

git clone https://github.com/startup-class/setup.git
./setup/setup.sh

git clone git://github.com/twitter/bootstrap.git

git clone https://github.com/jtantongco/Bitstarter.git

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

npm install

#screen will play well with emacs
wget raw.github.com/startup-class/dotfiles/master/.screenrc -O .screenrc
screen
#ctrl t - ctrl c to make new tabs

#touch .emacs
#emacs .emacs
#add this line and save: (define-key global-map "\C-h" 'backward-delete-char)

#ctrl x - ctrl s to save emacs
#ctrl x - ctrl c to close emacs


# !!!
#$ heroku login
#$ ssh-keygen -t rsa
#$ heroku keys:add
# Need to figure out how to pipe these securely

# cd Bitstarter
# heroku create
# git push heroku master 

#emacs -nq __Filename__.js


