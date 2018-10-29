
func! bootstrap#before() abort 

let g:neomake_enabled_c_makers = ['clang']
let g:SimpylFold_docstring_preview=1

endf

func! bootstrap#after() abort

source ./vimrc

endf
