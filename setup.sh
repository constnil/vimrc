git submodule init
git submodule sync
git submodule update
git submodule foreach git checkout master
git submodule foreach git pull origin

if [ -d ~/.vim_runtime ]
then
    cd ~/.vim_runtime
	git pull --rebase
else
	git clone git://github.com/amix/vimrc.git ~/.vim_runtime
fi
sh ~/.vim_runtime/install_awesome_vimrc.sh
ln -sf ~/.myvim/.vimrc ~/.vim_runtime/my_configs.vim
