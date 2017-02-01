syntax on

" some smart options
set nocompatible
set backspace=indent,eol,start
set autoindent
set ruler showcmd
set hls ic is
set showmatch
set bg=dark
set wrap
set keymodel=startsel

" Folding
set foldenable
set foldcolumn=5
set foldlevel=5
set foldmethod=indent
set foldminlines=2

" Number
set relativenumber

" nice indentation
filetype plugin indent on
set autoindent expandtab smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set linebreak

" Per-project config
set exrc

" Special indent for Python
au BufNewFile,BufRead *.py
   \ set tabstop=4 |
   \ set softtabstop=4 |
   \ set shiftwidth=4 

" Enable modelines (comments which configure vim)
set modelines=1

" When editing a file, always jump to the last cursor position
if has("autocmd")
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
endif

" Change color scheme from dark to light
map ; :call ChangeColor()<cr>
function! ChangeColor()
	if (&bg == "light")
		let g:col="dark"
	else
		let g:col="light"
    endif
    silent exec 'set bg=' . g:col
endfunction



