set nocp
set expandtab
set autoindent
set ruler
set softtabstop=2
set shiftwidth=2
set tabstop=2
set textwidth=0
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set history=999
set backspace=indent,eol,start
set showmode
set laststatus=2
set scrolloff=10
set ch=2
set hlsearch
set hidden
set whichwrap+=<,>,[,]
set wildmenu
set title
set incsearch
set ignorecase
set ttyfast
set virtualedit=onemore
set fileencodings=.
set spelllang=en_gb
set autochdir
set foldmethod=indent
set foldlevel=99
set showcmd     " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set incsearch       " Incremental search
set autowrite       " Automatically save before commands like :next and :make
set hidden      " Hide buffers when they are abandoned
"set mouse=a     " Enable mouse usage (all modes)
autocmd BufNewFile,BufRead *.py set ts=4 | set shiftwidth=4 | set expandtab | set autoindent | set showmatch
filetype plugin indent on
syntax on
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
"=====[ Highlight matches when jumping to next ]=============
" This rewires n and N to do the highlighing...
nnoremap <silent> n   n:call HLNext(0.4)<cr>
nnoremap <silent> N   N:call HLNext(0.4)<cr>
" EITHER blink the line containing the match...
    function! HLNext (blinktime)
        set invcursorline
        redraw
        exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
        set invcursorline
        redraw
    endfunction
"====[ Make tabs, trailing whitespace, and non-breaking spaces visible ]======
    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list
