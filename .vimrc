set nocompatible
set backspace=2

filetype off
filetype plugin indent off
if has("win64") || has("win32") || has("win16")
	set rtp+=~/.vim/bundle/vundle/
	let vpath='~/.vim/bundle/'
	call vundle#rc(vpath)
	set rtp+=~/.vim/
else
	set rtp+=$HOME/.vim/bundle/vundle/
	call vundle#rc()
endif

" Basic VIM setting
source ~/.vim/vimrcs/basic.vim

" vundle settings
source ~/.vim/vimrcs/vundle.vim 

source ~/.vim/vimrcs/special.vim
source ~/.vim/vimrcs/keys.vim

" Don't show tab line
" I must put this setting at last to be effective
if version>=700
    set showtabline=0
endif
