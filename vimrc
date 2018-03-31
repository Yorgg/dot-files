"Set standard file encoding
set encoding=utf8

" No special per file vim override configs
set nomodeline

" Stop word wrapping
set wrap

  " Except... on Markdown. That's good stuff.
  autocmd FileType markdown setlocal wrap

" Adjust system undo levels
set undolevels=100

" Use system clipboard
" set clipboard=unnamed
" Set tab width and convert tabs to spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
filetype plugin indent on

" Don't let Vim hide characters or make loud dings
set conceallevel=1
set noerrorbells

" Number gutter
set number

" Use search highlighting
set hlsearch
set incsearch

" Space above/beside cursor from screen edges
set scrolloff=1
set sidescrolloff=5

let mapleader="\<SPACE>"
nnoremap zz :update<cr>
inoremap zz <Esc>:update<cr>gi

"Open previously opened file buffer
" nmap <Leader><Leader> <c-^>

"Open vimrc File 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

"Add numbers
set numberwidth=2

"Source
nnoremap <leader>so :source ~/dotfiles/vimrc<cr>

"Tab to switch to next buffer - Shift Tab to switch to previous buffer
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>

"plugins
call plug#begin('~/.local/share/nvim/plugged')

  Plug 'Shougo/unite.vim'
  Plug 'dracula/vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'mhinz/vim-grepper'
	Plug 'Shougo/vimfiler.vim', { 'on': 'VimFiler' }
  Plug 'w0rp/ale'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'christoomey/vim-tmux-navigator' 

call plug#end()

"plugin settings
color Dracula
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
set laststatus=2
nnoremap <Leader>t :CtrlP<CR>

nnoremap <Leader>fp :Grepper<Space>-query<Space>
nnoremap <Leader>fb :Grepper<Space>-buffers<Space>-query<Space>-<Space>

map ` :VimFiler -explorer<CR>
map ~ :VimFilerCurrentDir -explorer -find<CR>
