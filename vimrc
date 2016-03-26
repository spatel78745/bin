set ruler
set hlsearch
set nobackup
set nowritebackup
set noswapfile
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set smarttab
set expandtab
set incsearch
set number
set cscopequickfix=s-,c-,d-,i-,t-,e-
set makeprg=build-system
set cursorline
set noic
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline
filetype indent on
filetype on
filetype plugin on
execute pathogen#infect()
syntax on
let g:airline_powerline_fonts = 1
set laststatus=2
:colors wombat
fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map ,g :call ShowFuncName() <cr>
nnoremap ,f :cs find f 
nnoremap ,t :cs find t 
nnoremap ,n :NERDTree <CR>
set wildmenu
set path=$PWD/**
:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
:match ExtraWhitespace /\s\+$/
:au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:au InsertLeave * match ExtraWhitespace /\s\+$/
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e
highlight ColorColumn ctermbg=235 guibg=#2c2d27

:set noerrorbells
:set vb

