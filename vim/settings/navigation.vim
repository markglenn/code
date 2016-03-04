"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Jump to tag
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Load tags from current or any parent path
set tags=tags;/

