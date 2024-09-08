"MAPPING{{{
inoremap jj <esc>
nnoremap <space> :
nnoremap O O<esc>
nnoremap o o<esc>
" python script automation
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>
nnoremap <f3> :NERDTreeToggle<cr>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

"}}}
"FILE-EDITING{{{
set number
set nocompatible
set cursorline
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
colorscheme gotham256 

" }}}
"SEARCH-TWEAKS{{{

set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
" }}}
"NOT-SET TWEAKS{{{

filetype plugin on
syntax on
filetype indent on

" }}}
"PLUGINS{{{
call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'Badacadabra/vim-archery'

call plug#end()
" }}}
"VIM_SCRIPTING{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

if has('gui_running')
    set background=dark
    colorscheme molokai 
endif
" }}}       
" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}
