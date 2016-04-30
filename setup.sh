#!/bin/sh

cd ~/.myvim
git pull
git gc

git submodule init
git submodule sync
git submodule update
git submodule foreach git checkout master
git submodule foreach git pull -f origin
git submodule foreach git gc

if [ -d ~/.vim_runtime ]
then
  cd ~/.vim_runtime
  git pull --rebase
  git gc
else
  git clone --recursive git://github.com/amix/vimrc.git ~/.vim_runtime
  git gc
fi

sh ~/.vim_runtime/install_awesome_vimrc.sh

if [ -e ~/.vim_runtime/my_configs.vim ]
then
  echo "~/.vim_runtime/my_configs.vimc exists, check it out!"
else
  ln -sf ~/.myvim/.vimrc ~/.vim_runtime/my_configs.vim
fi
