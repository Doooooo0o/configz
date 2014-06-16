syntax on
set nocp
color wombat 
set t_Co=256
let html_use_css=1
let html_no_pre=1
let html_use_xhtml=1
set ts=2
set ruler
set backspace=2
set wildmode=list:full
set shiftwidth=4
set tabstop=4
set shiftwidth=4
set expandtab
filetype on
filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType cpp set omnifunc=ccomplete#Complete
