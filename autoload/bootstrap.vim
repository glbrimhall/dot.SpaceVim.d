
func! bootstrap#before() abort 
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

func! bootstrap#after() abort

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
"nnoremap <C-z> <Esc>
"inoremap <C-z> <Esc>

"match boundaries
nnoremap b %

"fold
nnoremap f za<Esc>

"search word
nnoremap t *

"delete line
"nnoremap D d<Esc>

"select line
nnoremap v V


"select region
nnoremap V <C-v>

"line begin
noremap a 0

"line end
noremap e $

"prev word
nnoremap w P<Esc>

"del line above
nnoremap D :-1d<Cr>

"paste
"undo

"next word
noremap L w<Esc>

"prev word
noremap K b<Esc>

"next line
noremap n j 
inoremap <C-n> <Down>

"next search
noremap <C-n> /<Cr>

"next page
nnoremap N <C-f>

"prev line
noremap p <Up>
inoremap <C-p> <Up>

"prev search
noremap <C-p> ?<Cr>h 

"prev page
nnoremap P <C-b>

"next char 
"          l
inoremap <C-l> <Right>

"prev char
noremap k h
inoremap <C-k> <Left>

": mode
"nnoremap ; :

"i mode newline
nnoremap <CR> i<CR><Esc>

"let mapleader = ","

endf
