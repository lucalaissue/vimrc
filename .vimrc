"
"         _
"        (_)
"  __   ___ _ __ ___  _ __ ___
"  \ \ / / | '_ ` _ \| '__/ __|
"   \ V /| | | | | | | | | (__
"    \_/ |_|_| |_| |_|_|  \___|
"
"
"

let mapleader = " "

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'Yggdroot/indentLine'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'tomasiser/vim-code-dark'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Initialize plugin system
call plug#end()

" Basic
set nocompatible
set number relativenumber
syntax on
set encoding=utf-8
set noerrorbells
set novisualbell
set termguicolors
set splitbelow splitright
filetype plugin indent on
set autoindent
" set timeoutlen=0 ttimeoutlen=0
set smarttab
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
autocmd InsertEnter,InsertLeave * set cul!

" Autosave
"let g:session_autosave = 'yes'
"let g:session_autoload = 'yes'

" :W miss ^^
command W :w
command Wq :wq
command WQ :wq
command Q :q

" Keybindings
nnoremap <C-j> 10jzz
nnoremap <C-k> 10kzz
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
vnoremap <Left> <nop>
vnoremap <Right> <nop>
vnoremap <Up> <nop>
vnoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
noremap <silent> <C-h> :call CocActionAsync('doHover')<CR>
noremap <silent> <C-S-e> :NERDTreeToggle<CR>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:indentLine_color_term = 236
let g:indentLine_char = '▏'

" Use <c-space> to trigger completion.
inoremap <silent><expr> <NUL> coc#refresh()
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "<TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Disable automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Theming
colorscheme codedark
" colorscheme onedark
let g:airline_theme='onedark'

" GitGutter
let g:gitgutter_enabled = 1

" coc
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-json',
  \ 'coc-clangd',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-java',
  \ 'coc-python',
  \ 'coc-yaml'
  \ ]

" NerdTree
" autocmd vimenter * NERDTree
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
autocmd FileType nerdtree setlocal relativenumber

" Load directory settings
if filereadable(".settings.vim")
    so .settings.vim
endif

