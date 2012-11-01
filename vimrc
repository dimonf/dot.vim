call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on
set viminfo='10,\"100,:20,%,n~/.viminfo
set tabstop=3
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
"
"
"
nmap <silent> ]] :let &tabstop += 1<CR>
nmap <silent> [[ :let &tabstop -= &tabstop > 1?1:0<CR>
ino <C-A> <C-O>yiW<End>=<C-R>=<C-R>0<CR>|"map for arithmetical calculations
" remove 	this section to a separate file and source it from vimrc
function! Test1()
	+1
endfunction
function! Test2()
	return 'abc'
endfunction
