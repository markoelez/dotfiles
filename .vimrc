filetype plugin indent on

let s:tabwidth=4
au Filetype * let &l:tabstop = s:tabwidth
au Filetype * let &l:shiftwidth = s:tabwidth
au Filetype * let &l:softtabstop = s:tabwidth

syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
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
