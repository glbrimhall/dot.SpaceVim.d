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

"line begin
noremap a 0

"line end
noremap e $

"prev word
nnoremap w P<Esc>

"paste
"undo

"next word
noremap L w<Esc>

"prev word
noremap K b<Esc>

"next line
noremap n j
inoremap <C-n> <Down>

"prev line
noremap p k
inoremap <C-p> <Up>

"next char 
"          l
inoremap <C-l> <Right>

"prev char
noremap k h
inoremap <C-k> <Left>

": mode
nnoremap ; :

"i-mode newline
nnoremap <CR> i<CR><Esc>

endf
