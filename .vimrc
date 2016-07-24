set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here 
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on

syntax on
let python_highlight_all=1

set shiftwidth=2  " operation >> indents 2 columns;<< unindents 2 columns
set tabstop=2     " a hard TAB displays as 2 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=2 " insert/delete 2 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set smartindent    " align the new line indent with the previous line
set wildmenu
set number

"Define leader
let mapleader = ','

"Window"" and tab commands
nnoremap <Leader>h <esc>:tabp<CR>
nnoremap <Leader>l <esc>:tabn<CR>
nnoremap <Leader>j <esc><c-w>j
nnoremap <Leader>k <esc><c-w>k

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" visual
highlight Normal ctermbg=black
set background=dark
set cursorline
set t_Co=256
set colorcolumn=80


" colorpack
colorscheme lanox

" pep8
let g:pep8_map='<leader>8'

" Load syntastic errors into location list
let g:syntastic_always_populate_loc_list = 1
" Don't Check synastic errors when loading file
let g:syntastic_check_on_open = 0
" Don't check on write
let g:syntastic_check_on_wq = 0
" Ignore certain file types for syntastic
let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'passive_filetypes': ['asm'] }

" Wrap git commit messages at 72 characters
au FileType gitcommit set tw=72

" Haskell settings
au FileType haskell 
  \ set tabstop=2 |
  \ set softtabstop=2 |
  \ set shiftwidth=2 

" Java settings
au FileType java
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4

" Python settings
au FileType python
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set tw=79 |
  \ set encoding=utf-8

" LaTeX settings
au FileType tex
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set tw=79 |
  \ set encoding=utf-8

"YouCompleteMe Options
let g:ycm_autoclose_preview_window_after_insertion = 1

"Enable folding and use space key to fold/unfold
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1


"Powerline status
set laststatus=2

"NERDTree settings
nnoremap <F3> :NERDTreeToggle <Enter>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
