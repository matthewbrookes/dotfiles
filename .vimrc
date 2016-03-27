syntax on
filetype indent plugin on

set shiftwidth=2  " operation >> indents 2 columns;<< unindents 2 columns
set tabstop=2     " a hard TAB displays as 2 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=2 " insert/delete 2 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line
set wildmenu

"Pathogen load"
execute pathogen#infect()

"Define leader
let mapleader = ','

"Window"" and tab commands
map <Leader>h <esc>:tabp<CR>
map <Leader>l <esc>:tabn<CR>
map <Leader>j <esc><c-w>j
map <Leader>k <esc><c-w>k

"Other general mappings
map <Leader>r <esc>:w <CR> :!python3 %<CR>

" visual
highlight Normal ctermbg=black
set background=dark
set cursorline
set t_Co=256"
set colorcolumn=80


" colorpack
colorscheme vibrantink

" gundo
nnoremap <F5> :GundoToggle<CR>

" pep8
let g:pep8_map='<leader>8'


" compile with f5
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java -cp %:p:h %:t:r"
    elseif &filetype == 'sh'
        exec "!time bash %"
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

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

"Notes
:let g:notes_directories = ['~/Documents/Notes']
:let g:notes_suffix = '.txt'
