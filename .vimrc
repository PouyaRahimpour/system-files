call plug#begin("~/.vim/plugged")
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
call plug#end()


set number
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" set hlsearch=false
" set incsearch=true

set ignorecase
set mouse=v
set autoindent
set smarttab
set wildmode=longest,list
set cc=80
set mouse=a
set clipboard=unnamedplus
set spell
set noswapfile

set scrolloff=8
set signcolumn="yes"

if (has("termguicolors"))
    set termguicolors
endif
syntax enable
" colorscheme evening
" colorscheme desert
" colorscheme slate

" colorscheme dracula
" colorscheme sublimemonokai
colorscheme onedark


noremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < inp<CR>
inoremap <F8> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o "%<" "%" && "./%<" < inp<CR>

" -pthread

noremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>
inoremap <F9> <ESC> :w <CR> :!g++ -fsanitize=address -std=c++17 -Wall -Wextra -Wshadow -DONPC -O2 -o %< % && ./%< <CR>





let mapleader = " "
noremap <leader>w :w<cr>
noremap <leader>a ggvG
noremap <leader>/ 0i//<esc>
noremap <leader># 0i#<esc>
"  noremap <leader>r Run()
noremap <leader>q :q<cr>
noremap <leader>e :e .<cr>
noremap <leader>s :source ~/.vimrc<cr>

inoremap J <esc>:m .+1<cr>==gi
inoremap K <Esc>:m .-2<CR>==gi
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap n nzzv
nnoremap N Nzzv
xnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y


" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <leader>cpp :w <cr> :Cpp <cr>
command Cpp :!g++ -fsanitize=address -std=c++17 -DONPC -O2 -o %< % && ./%< < inp

command Dev :e ~/dev
command Src source ~/.vimrc

