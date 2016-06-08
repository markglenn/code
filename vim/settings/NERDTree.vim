silent! nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
silent! nnoremap <silent> <Leader>f :NERDTreeFind<CR>

if has("autocmd")
  autocmd vimenter * if !argc() | NERDTree | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif

let NERDTreeIgnore = ['\.pyc$', '^tags$', '__pycache__', '\.zeus\.sock$']
