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

colorscheme solarized

" Remove the scrollbar
set guioptions-=L

" Set font
" set guifont=Monaco\ for\ Powerline:h13
if has('gui_macvim')
  " set macligatures
  set guifont=Fira\ Code:h14
endif

" Search options
set incsearch
set hlsearch

" Always show the status line
set laststatus=2

" Whitespace highlighting
silent! nnoremap <silent> <Leader>$ :set list!<CR>
silent! nnoremap <silent> <Leader>h :noh<return>

" Pretty UTF8 characters
set listchars=tab:▸\ ,eol:¬
set showbreak=…

if has('mouse_sgr')
  set mouse=a
  set ttymouse=sgr
elseif has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif

set ttyfast      " Fast TTY that can handle fast scrolling
set scrolloff=7  " Set lines to the cursor when moving vertically
set noshowcmd

set noerrorbells
set visualbell
set t_vb=
set tm=500

set completeopt=longest,menu
runtime macros/matchit.vim

set clipboard=unnamed
let g:neocomplete#enable_at_startup = 1
let g:vimwiki_list = [{'path': '~/Library/Mobile Documents/com~apple~CloudDocs/Documents/vimwiki'}]
