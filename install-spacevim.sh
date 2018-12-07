#!/bin/bash

#apt-get purge -y emacs-nox
#apt-get autoremove -y --purge
#apt-get install emacs25-nox

curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh

bash nodesource_setup.sh

rm nodesource_setup.sh

apt-get install -y nodejs vim-nox 
#if there are errors with <Esc>, install the following
#sudo apt-get install -y fcitx-frontend-fbterm fcitx

nodejs -v

NPM_MODULES="\
tern \
js-beautify \
eslint
"

for MODULE in $NPM_MODULES; do
  npm install -g $MODULE
done


# install spacevim
cd ~ 
ln -sf dot.SpaceVim.d .SpaceVim.d
curl -sLf https://spacevim.org/install.sh | bash

