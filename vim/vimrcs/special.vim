"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Perforce Related 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win16") || has("win32") || has("win64")
    nnoremap <leader>pe :silent !c:\portable\perforce\p4wrapper.exe -file=%:p -action=edit<cr>
    nnoremap <leader>pr :silent !c:\portable\perforce\p4wrapper.exe -file=%:p -action=revert<cr>
endif

" Special file type, load C syntax highlighting
au BufWinEnter,BufRead,BufNewFile *.es set filetype=c
au BufWinEnter,BufRead,BufNewFile *.ts set filetype=c
au BufWinEnter,BufRead,BufNewFile *.cs set filetype=c
au BufWinEnter,BufRead,BufNewFile *.lls set filetype=c
au BufWinEnter,BufRead,BufNewFile *.gls set filetype=c
au BufWinEnter,BufRead,BufNewFile *.glw set filetype=c
au BufWinEnter,BufRead,BufNewFile *.hss set filetype=c
au BufWinEnter,BufRead,BufNewFile *.ss set filetype=c
