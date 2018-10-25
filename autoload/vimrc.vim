func! vimrc#before() abort

    let g:neomake_enabled_c_makers = ['clang']
    nnoremap jk <Esc>

    let g:SimpylFold_docstring_preview=1

set foldmethod=indent
" set foldnestmax=10
" set nofoldenable
set foldlevel=99

nnoremap 1 za

endf

func! vimrc#after() abort

set foldmethod=indent
" set foldnestmax=10
" set nofoldenable
set foldlevel=99

nnoremap 1 za

"augroup XML
"    autocmd!
"    autocmd FileType xml let g:xml_syntax_folding=1
"    autocmd FileType xml setlocal foldmethod=syntax
"    autocmd FileType xml :syntax on
"    autocmd FileType xml :%foldopen!
"augroup END

endf
