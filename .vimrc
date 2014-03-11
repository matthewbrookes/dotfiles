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

"Commands for python mode
let mapleader = "," " rebind <Leader> key
let g:pymode = 1
let g:pymode_trim_whitespace = 1
let g:pymode_python = 'python3'
let g:pymode_run_bind = '<leader>r'

"Window and tab commands
map <Leader>h <esc>:tabprevious<CR>
map <Leader>l <esc>:tabnext<CR>
map <Leader>j <esc><c-w>j
map <Leader>k <esc><c-w>k
