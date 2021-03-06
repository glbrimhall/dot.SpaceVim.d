#!/bin/bash

#set -x

MODE=${1:-install}

if [ "$MODE" = "install" ]; then

#apt-get purge -y emacs-nox
#apt-get autoremove -y --purge
#apt-get install emacs25-nox

curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh

sudo bash nodesource_setup.sh

rm nodesource_setup.sh

sudo apt-get install -y nodejs vim-nox 
#if there are errors with <Esc>, install the following
#sudo apt-get install -y fcitx-frontend-fbterm fcitx

nodejs -v

NPM_MODULES="\
tern \
js-beautify \
eslint
"

for MODULE in $NPM_MODULES; do
  sudo npm install -g $MODULE
done


# install spacevim
cd ~ && curl -sLf https://spacevim.org/install.sh | bash

fi
if [ "$MODE" = "uninstall" ]; then

RMDIR="\
.SpaceVim \
.viminfo \
.vim \
.config/nvim \
.cache/neocomplete \
.cache/neomru \
.cache/neosnippet \
.cache/neoyank \
.cache/SpaceVim \
.cache/vimfiler \
.cache/vimfiles"

cd ~
for DIR in $RMDIR; do
  echo "rm -fr \"$DIR\""
  rm -fr "$DIR"
done

fi
