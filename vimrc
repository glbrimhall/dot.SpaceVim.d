set foldmethod=indent
" set foldnestmax=10
" set nofoldenable
set foldlevel=99

set wrap linebreak nolist
set formatoptions=1

"augroup XML
"    autocmd!
"    autocmd FileType xml let g:xml_syntax_folding=1
"    autocmd FileType xml setlocal foldmethod=syntax
"    autocmd FileType xml :syntax on
"    autocmd FileType xml :%foldopen!
"augroup END

"Escape 
noremap <C-z> <Esc>
inoremap <C-z> <Esc>

"match boundaries
map b %

"fold
nnoremap f za<Esc>

"search word
nnoremap t *

"search word
nnoremap t *

"search clear 
nnoremap T :noh<Cr>

"delete line
"nnoremap D d<Esc>

"delete char right
inoremap <C-x> <Esc>lxi

"delete char left 
inoremap <C-d> <Esc>lXi

"redo
noremap <C-u> <C-r>

"undo
inoremap <C-u> <Esc>ui

"select line
nnoremap v V

"select region
nnoremap V <C-v>

"line begin
noremap a 0
inoremap <C-a> <Esc>0i

"line end
noremap e $
inoremap <C-e> <Esc>$i

"paste
nnoremap w P<Esc>
inoremap <C-w> <Esc>lPi

"del line above
nnoremap D :-1d<Cr>

"insert endline 
"nnoremap I $a

"next word
noremap L w<Esc>

"prev word
noremap K b<Esc>

"next line
noremap n <Down>
inoremap <C-n> <Down>

"next search
nnoremap N /<Cr>

"next page
noremap <C-n> <C-f>  

"prev line
noremap p <Up>
noremap j <Up>
inoremap <C-p> <Up>

"prev search
nnoremap P ?<Cr>h

"prev page
noremap <C-p> <C-b>  

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

"compile
nnoremap 8 :make<Cr>:cw<Cr>
nnoremap 9 :cn<Cr>
nnoremap 0 :cp<Cr>
"nnoremap <M-l> :cl<Cr>

"explorer
nnoremap <C-a> :tabnew<Cr>:ex .<Cr>

"let mapleader = ","
