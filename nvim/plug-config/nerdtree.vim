" Open Nerdtree automatically and map open/close to Ctrl n
" "autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
" Close vim if nerdtree is last thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Closes nerdtree once file is selected
let NERDTreeQuitOnOpen = 1
" auto deletes file in nerdtree when deleted
let NERDTreeAutoDeleteBuffer = 1
"Nicer nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
