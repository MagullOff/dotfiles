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
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'rust-lang/rust.vim'
Plug 'mbbill/undotree'
Plug 'preservim/nerdcommenter'
"Plug 'vim-latex/vim-latex'
call plug#end()
"themes
colorscheme gruvbox
let g:airline_theme='angr'
hi Normal guibg=NONE ctermbg=NONE
"leader
let mapleader = " "
"sizing
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

"hehe herezja
noremap ; l
noremap l k
noremap k j
noremap j h

"latex preview
map <leader>L :! pdflatex %<CR><CR>
map <leader>LL :! killall mupdf ; mupdf $(echo % \| sed  's/tex$/pdf/') & disown<CR><CR>

"moving between the windows
nnoremap <leader>j :wincmd h<CR>
nnoremap <leader>k :wincmd j<CR>
nnoremap <leader>l :wincmd k<CR>
nnoremap <leader>; :wincmd l<CR>
"undotree
nnoremap <leader>u :UndotreeShow<CR>
"nerd tree
nnoremap <leader>n :NERDTreeToggle<bar><bar> :vertical resize 20<CR>
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <leader>ps :Rg<SPACE>

nmap <leader>rn <Plug>(coc-rename)
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' tomake sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

nnoremap <leader>fg <cmd>Telescope live_grep<cr>

nnoremap <leader>r :Cargo run<CR> 

nnoremap <leader>w :set wrap!<CR>

map <leader>O :! mdpdf %<CR><CR>
map <leader>OO :! mupdf $(echo % \| sed  's/md$/pdf/') & disown<CR><CR>
