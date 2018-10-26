func! vimrc#before() abort

"" Folding
let g:neomake_enabled_c_makers = ['clang']
let g:SimpylFold_docstring_preview=1

set foldmethod=indent
" set foldnestmax=10
" set nofoldenable
set foldlevel=99

set wrap linebreak nolist
set formatoptions=1

endf

func! vimrc#after() abort

set foldmethod=indent
" set foldnestmax=10
" set nofoldenable
set foldlevel=99

"augroup XML
"    autocmd!
"    autocmd FileType xml let g:xml_syntax_folding=1
"    autocmd FileType xml setlocal foldmethod=syntax
"    autocmd FileType xml :syntax on
"    autocmd FileType xml :%foldopen!
"augroup END

"" Navigation 
nnoremap <C-z> <Esc>
inoremap <C-z> <Esc>

"match boundaries
nnoremap b %<Esc>
           
"fold
nnoremap f za<Esc>
          
"delete line
"nnoremap D d<Esc>

nnoremap v V
           
nnoremap V <C-v>
       
"prev word
nnoremap w P<Esc>

"paste
"undo
           
"next word
nnoremap L w<Esc>
           
nnoremap K b<Esc>
           
           
"paste

"nnoremap n /
           
"repeat last search"
"nnoremap j n
           
"next line
"nnoremap k p
           
"prev line
"nnoremap h k
           
"prev char
"          l           "next char
"nnoremap ; :           ": mode"

endf
