" Vundle
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles :
Bundle 'majutsushi/tagbar'
"Bundle 'fholgado/minibufexpl.vim'
Bundle 'corntrace/bufexplorer'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'drmikehenry/vim-extline'
Bundle 'msanders/snipmate.vim'
Bundle 'ervandew/supertab'
Bundle 'Rykka/riv.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/MultipleSearch'

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.


" show line number
set number

" syntax highlight
syntax on

" indentation
" set cindent
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

" set number of columns
"set columns=80


" use VIM fold ({{{{ blah }}})
" zo : open fold
" zc : close
set foldmarker={{,}}
set foldmethod=marker

" enable mouse if supported by the terminal
"if has('mouse')
"  set mouse=a
"endif

" use UTF8 encoding
set encoding=utf-8

" disable beep in VIM
set vb t_vb=

" METASPLOIT
" 
" au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
" 
" if !exists("au_loaded")
"     let au_loaded = 1
"     augroup rb
"         au FileType ruby set shiftwidth=4 tabstop=4 softtabstop=4 textwidth=78
"         au FileType ruby set noexpandtab
"         au FileType ruby hi BogusWhitespace ctermbg=darkgreen guibg=darkgreen
"         au FileType ruby match BogusWhitespace /\s\+$\|^\t\+ \+\|^ \+\t*/
"     augroup END
" endif
" 

function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1 
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)


