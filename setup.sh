# This is the initial setup script for vimconf
# it will create vim/bundle folder, then clone Vundle.vim into it.
# then create necessary symbolic link to .vimrc and .vim 
# then run vim to do plugin install

# Get the vimconfig repository path
CONFIG_DIR=`pwd`

# Create vim/bundle folder if it doesn't exist
if [ ! -d vim/bundle ]; then
	mkdir vim/bundle
fi

cd vim/bundle 

# clone Vundle.vim repository if it doesn't exists
if [ ! -d Vundle.vim ]; then
	git clone https://github.com/gmarik/Vundle.vim
else
	cd Vundle.vim
	git pull origin master
fi

# create symbolic links
cd ~
if [[ -L .vimrc || -f .vimrc ]]; then
	rm .vimrc
fi 
if [[ -L .vim || -d .vim ]]; then
	rm .vim
fi
ln -s $CONFIG_DIR/.vimrc .vimrc
ln -s $CONFIG_DIR/vim .vim

# run vim to do the plugin install
vim +PluginInstall +qall
