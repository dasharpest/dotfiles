set number relativenumber 
set ttymouse=sgr
set mouse=a
set nocompatible
filetype plugin on
syntax on
let NERDTreeShowHidden=1
set noswapfile   
set nobackup
set incsearch
set wildmenu

nnoremap <C-n>		:NERDTreeToggle<CR>

" Colorscheme
set background=dark
colorscheme ir_black

let g:vimwiki_list = [{'path': '~/Documents/wiki/trade_checklist',
                      \ 'syntax': 'markdown', 'ext': 'md'}]
