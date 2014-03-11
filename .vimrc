syntax on
filetype indent plugin on

set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set wildmenu

"Pathogen load"
call pathogen#infect()
call pathogen#helptags()

"Window and tab commands
map <Leader>h <esc>:tabprevious<CR>
map <Leader>l <esc>:tabnext<CR>
map <Leader>j <esc><c-w>j
map <Leader>k <esc><c-w>k

"Other general mappings
map <Leader>r <esc>:!python3 %<CR>

set foldmethod=indent
set foldlevel=2
set foldnestmax=4

" visual
highlight Normal ctermbg=black
set background=dark
set cursorline
set t_Co=256"


" colorpack
colorscheme vibrantink

" gundo
nnoremap <F5> :GundoToggle<CR>

" lusty
set hidden

" pep8
let g:pep8_map='<leader>8'

" supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview