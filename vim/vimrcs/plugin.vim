let g:ale_completion_enabled = 1

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'jsfaint/gen_tags.vim'
Plug 'majutsushi/tagbar'

Plug 'w0rp/ale'

" Easy and fast motion
Plug 'Lokaltog/vim-easymotion'

" Show visual indent guide
Plug 'nathanaelkane/vim-indent-guides'

" Comments
Plug 'tomtom/tcomment_vim'
Plug 'vim-scripts/DoxygenToolkit.vim'

Plug 'embear/vim-localvimrc'

Plug 'itchyny/lightline.vim'

" solarized color theme
Plug 'altercation/vim-colors-solarized'

call plug#end()

silent! nnoremap <unique> <leader>fc :cs find c <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>fd :cs find d <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>fe :cs find e <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>ff :cs find f <C-R>=expand("<cfile>")<CR><CR>
silent! nnoremap <unique> <leader>fg :cs find g <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>fi :cs find i <C-R>=expand("<cfile>")<CR><CR>
silent! nnoremap <unique> <leader>fs :cs find s <C-R>=expand("<cword>")<CR><CR>
silent! nnoremap <unique> <leader>ft :cs find t <C-R>=expand("<cword>")<CR><CR>

" ale
set omnifunc=ale#completion#OmniFunc

" tagbar
silent! nnoremap <unique> <leader>lt :TagbarToggle<CR>

" File manager
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
silent! nnoremap <unique> <leader>ld :Vexplore<CR>

" fzf keys
nnoremap <silent> <C-p> :Files<CR>

" Doxygen comments
let g:load_doxygen_syntax=1

" Color scheme settings
set t_co=256
syntax enable
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
let g:solarized_bold      =0
let g:solarized_underline =0
let g:solarized_italic    =0
let g:solarized_menu      =0
set background=dark
" Staus line
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
" Set colorscheme here doesn't work for new version of vundle.vim. Need to set after vundle#end()
colorscheme solarized
