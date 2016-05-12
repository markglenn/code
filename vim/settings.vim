set number         " Show line number
set showcmd        " Show the command you are typing in the bottom right corner
set hidden         " Allow buffers to exist without a window
syntax on          " Turn on syntax highlighting

" ================ Indentation ===============

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Set tab completion propery
set wildmode=longest,list,full
set wildmenu

" Set backup directory
set dir=/private/tmp,/tmp
set backupcopy=yes

" I mistype these all the time
command! W w
command! Q q
command! Qa qa
command! QA qa
