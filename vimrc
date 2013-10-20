" show line number
set number

" syntax highlight
syntax on

" Enable filetype plugin with indentation
"filetype plugin indent on

" indentation
"set cindent
"set autoindent
"set expandtab
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
set columns=80

" use VIM fold ({{{{ blah }}})
" zo : open fold
" zc : close
set foldmethod=marker

" enable mouse if supported by the terminal
"if has('mouse')
"  set mouse=a
"endif

" use UTF8 encoding
set encoding=utf-8

" disable beep in VIM
set vb t_vb=



" Indent Python in the Google way.

setlocal indentexpr=GetGooglePythonIndent(v:lnum)

let s:maxoff = 50 " maximum number of lines to look backwards.

function GetGooglePythonIndent(lnum)

  " Indent inside parens.
  " Align with the open paren unless it is at the end of the line.
  " E.g.
  "   open_paren_not_at_EOL(100,
  "                         (200,
  "                          300),
  "                         400)
  "   open_paren_at_EOL(
  "       100, 200, 300, 400)
  call cursor(a:lnum, 1)
  let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
        \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
        \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
        \ . " =~ '\\(Comment\\|String\\)$'")
  if par_line > 0
    call cursor(par_line, 1)
    if par_col != col("$") - 1
      return par_col
    endif
  endif

  " Delegate the rest to the original function.
  return GetPythonIndent(a:lnum)

endfunction

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"



function! s:Underline(chars)
  let chars = empty(a:chars) ? '-' : a:chars
  let nr_columns = virtcol('$') - 1
  let uline = repeat(chars, (nr_columns / len(chars)) + 1)
  put =strpart(uline, 0, nr_columns)
endfunction
command! -nargs=? Underline call s:Underline(<q-args>)
