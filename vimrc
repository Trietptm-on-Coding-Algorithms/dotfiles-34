" show line number
set number

" syntax highlight
syntax on

" Enable filetype plugin with indentation
filetype plugin indent on

" indentation
set cindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

" show matching brackets
set showmatch

" highlight search results
set hlsearch
set incsearch

" ignore case when searching
set ignorecase
set smartcase

" number of vim commands to remember
set history=1000

" number of undo
set undolevels=1000

" make terminal inherit the title from Vim
set title

" show X lines before and after the cursor when scrolling
set scrolloff=5

" reload files when they are modified by an other editor/software
set autoread

" enable mouse if supported by the terminal
"if has('mouse')
"  set mouse=a
"endif

" use UTF8 encoding
set encoding=utf-8

