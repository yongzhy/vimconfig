" === START OF vundle==="
filetype off
filetype plugin indent off
if has("win64") || has("win32") || has("win16")
	set rtp+=~/.vim/bundle/Vundle.vim/
	let vpath='~/.vim/bundle/'
	call vundle#begin(vpath)
	set rtp+=~/.vim/
else
	set rtp+=$HOME/.vim/bundle/Vundle.vim/
	call vundle#begin()
endif

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" VIM snipmate and its dependency
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" The powerful CtrlP 
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'
if has("win64") || has("win32") || has("win16")
    let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
else
    let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
endif
let g:ctrlp_root_markers = ['f3make.bat', '.p4config', 'cscope.out', 'cscope.files', '.git', '.hg', '.svn', '.bzr', '_darcs', 'GTAGS']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:100'
let g:ctrlp_custom_ignore = {
	\ 'dir':  'Feedback$',
	\ 'file': '\.(xsl|txt|xml|vsd|exe|ppt|tags|out|ref)$',
	\ }

" Fuzzy search to replace CtrlP builtin search
Plugin 'JazzCore/ctrlp-cmatcher'
let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

" Tagbar to show tags in current file
Plugin 'majutsushi/tagbar'
nnoremap <F8> :TagbarToggle<CR>

if !has("win32unix")
	" auto completion with fuzzy and clang support
	Plugin 'Valloric/YouCompleteMe'
	" key compatible with snipmate
	let g:ycm_key_list_select_completion = ['<C-j>']
	let g:ycm_key_list_previous_completion = ['<C-k>']
    let g:ycm_disable_for_files_larger_than_kb = 0
endif

" syntax checking
Plugin 'scrooloose/syntastic'

" airline status line
Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 0

" Comment plugin
Plugin 'tomtom/tcomment_vim'

" Easy and fast motion
Plugin 'Lokaltog/vim-easymotion'

" Show visual indent guide
Plugin 'nathanaelkane/vim-indent-guides'

" Fast search tool
Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'
nnoremap <leader>fa :Ack! --smart-case <cword><cr>
nnoremap <leader>fw :Ack! --smart-case -w <cword><cr>

Plugin 'vim-scripts/gtags.vim'
silent! nnoremap <unique> <leader>fr :Gtags -r <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>fg :Gtags <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>n :cn<CR>
silent! nnoremap <unique> <leader>p :cp<CR>
" Use gtags-cscope for cscope search
set csprg=gtags-cscope
" enable vim to search in cscope dabase for Ctrl+]
set cscopetag
" Make the cscope output to quickfix window
set cscopequickfix=s-,c-,d-,i-,t-,e-
silent! nnoremap <unique> <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>

" local vimrc support
Plugin 'MarcWeber/vim-addon-local-vimrc'

" solarized color theme
Plugin 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256
let g:solarized_bold      =0 
let g:solarized_underline =0
let g:solarized_italic    =0  
let g:solarized_menu      =0
set background=dark
" Set colorscheme here doesn't work for new version of vundle.vim. Need to set after vundle#end()
" colorscheme solarized 

call vundle#end()            " required
filetype plugin indent on    " required

" === END OF vundle==="
colorscheme solarized
