filetype plugin indent on

" default to 2 spaces
set shiftwidth=2
set softtabstop=2
set tabstop=2

" 2 spaces
autocmd Filetype go setlocal ts=2 sw=2 expandtab
autocmd Filetype haskell setlocal ts=2 sw=2 expandtab

" 4 spaces
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab

syntax on
set shiftround
set autoindent
set expandtab
set ai
set number
set hlsearch
set ruler

colorscheme peachpuff

highlight Comment ctermfg=green

set clipboard=unnamed
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
