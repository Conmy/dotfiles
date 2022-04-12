set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=100,120              " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                   " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
  " Plugins Section
  Plug 'dracula/vim' " Dracula theme
  Plug 'ryanoasis/vim-devicons' " Dev-icon support
  Plug 'SirVer/ultisnips' " snippet engine
  Plug 'honza/vim-snippets' " a collection of vim snippets
  Plug 'scrooloose/nerdtree' " file explorer
  Plug 'preservim/nerdcommenter' " comment toggle lines
  Plug 'mhinz/vim-startify' " start page with customizations
  Plug 'neoclide/coc.nvim', {'branch': 'release'} " Code completion engine for nvim
call plug#end()

" color schemes
if (has('termguicolors'))
  set termguicolors
endif

syntax enable

" colorscheme evening
colorscheme dracula

" open new split panes to right and below
set splitright
set splitbelow

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" NERD Commenter settings

let g:NERDCreateDefaultMappings = 1 " Create default mappings
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDAltDelims_java = 1 " Use Java alternate delimiters by default
let g:NERDCommentEmptyLines = 1 " Comment empty lines by default when commenting a region
let g:NERDTrimTrailingWhitespace = 1 " trim trailing white-space when uncommenting a line
let g:NERDToggleCheckAllLines = 1 " Check all selected lines separately if they are commented or not.

" NERDTree Configuration


