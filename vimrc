"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=~/.code/vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.code/vim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

source ~/.code/vim/bundles.vim

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

execute 'source' '~/.code/vim/settings.vim'
for fpath in split(globpath('~/.code/vim/settings', '*.vim'), '\n')
  execute 'source' fpath
endfor