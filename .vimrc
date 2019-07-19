map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

set number
set relativenumber
set nocompatible
set background=dark 
set linebreak
set encoding=utf-8
set backspace=indent,eol,start
set transparency=20
set tabstop=4
set shiftwidth=4
syntax on

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'gabrielelana/vim-markdown'
Plugin 'lervag/vimtex'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'rakr/vim-one'
Plugin 'leafgarland/typescript-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Quramy/tsuquyomi'


call vundle#end() 
filetype plugin indent on

" let g:markdown_enable_folding = 1
let g:markdown_enable_conceal = 1
let g:vimtex_view_method = 'skim'
let g:ycm_autoclose_preview_window_after_completion=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

colorscheme one 
