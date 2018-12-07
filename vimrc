set foldmethod=indent
" set foldnestmax=10
" set nofoldenable
set foldlevel=99

set wrap linebreak nolist
set formatoptions=1

"{{{ no_spacevim
if !exists("g:spacevim_windows_leader")

  augroup XML
      autocmd!
      autocmd FileType xml,ui,xhtml,html,xsd let g:xml_syntax_folding=1
      "autocmd FileType xml,ui,xhtml,html,xsd setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
      autocmd FileType xml,ui,xhtml,html,xsd setlocal foldmethod=syntax
      autocmd FileType xml,ui,xhtml,html,xsd :syntax on
      "autocmd FileType xml,ui,xhtml,html,xsd normal zR 
      "autocmd FileType xml,ui,xhtml,html,xsd :%foldopen!
  augroup END
  
  "matchit
  source ~/.SpaceVim.d/plugin/matchit.vim
  :helptags ~/.SpaceVim.d/doc
  
  "rebuild help:
  ":help add-local-help
  
  :filetype plugin on
  :color slate
  ":color desert

endif
"}}} no_spacevim

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

"window switch
noremap <Tab> <C-w>w

"compile
nnoremap 8 :make<Cr>:cw<Cr>
nnoremap 9 :cn<Cr>
nnoremap 0 :cp<Cr>
"nnoremap <M-l> :cl<Cr>

"explorer
nnoremap <C-a> :tabnew<Cr>:ex .<Cr>

"let mapleader = ","
