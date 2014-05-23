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

set autochdir

" Mouse
" set mouse=a

" Folding
set foldenable
set foldcolumn=5
set foldlevel=5
set foldmethod=indent
set foldminlines=2

" Number
set number

" nice indentation
filetype plugin indent on
set autoindent cindent noexpandtab smartindent
set tabstop=4
set shiftwidth=4
set smarttab
set linebreak

" some useful mapings
" save file
imap <F2> <ESC>:w<CR>a
map <F2> <ESC>:w<CR>

" next tab
map <C-right> :bnext<CR>
imap <C-right> <ESC>:bnext<CR>a

" prev tab
map <C-left> :bprev<CR>
imap <C-left> <ESC>:bprev<CR>a

" toggle NERDTree
map <leader>t :NERDTreeToggle<CR>

" toggle Tagbar
map <leader>l :TagbarToggle<CR> 

" errors, useful if you do lots of C(++)
map < <ESC>:cprev<CR>
map > <ESC>:cnext<CR>

" better autocomplete
function! TabComplete()
    if col('.') > 1 && strpart(getline('.'), col('.')-2, 3) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
endfunction
set completeopt=longest,menu
inoremap <Tab> <C-R>=TabComplete()<Cr>

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



