set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set exrc
set guicursor=
set relativenumber
set nu
set hidden
set noerrorbells
set nowrap
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'mbbill/undotree'
Plug 'preservim/nerdcommenter'
Plug 'vim-latex/vim-latex'
call plug#end()

colorscheme gruvbox
let g:airline_theme='angr'
hi Normal guibg=NONE ctermbg=NONE

let mapleader = " "

nnoremap <leader>r :Cargo run<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
"hehe herezja
noremap ; l
noremap l k
noremap k j
noremap j h

nnoremap <leader>fg <cmd>Telescope live_grep<cr>
highlight Normal guibg=none
hi Normal guibg=NONE ctermbg=NONE

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <leader>h :wincmd h<CR>

nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>n :NERDTreeToggle<bar><bar> :vertical resize 20<CR>
nnoremap <leader>ps :Rg<SPACE>

nnoremap <leader>jp :call CocAction('jumpDefinition')
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
