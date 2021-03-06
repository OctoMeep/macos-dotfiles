map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

autocmd BufNewFile *.tex 0r ~/.vim/templates/tex.skel
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

set number
set relativenumber
set nocompatible
set background=dark 
set linebreak
set encoding=utf-8
set backspace=indent,eol,start
" set transparency=20
set tabstop=4
set shiftwidth=4
set noundofile
set wildignore+=*.aux,*.bbl,*.bcf,*.blg,*.fdb_latexmk,*.fls,*.run.xml,*.synctex.gz,*.toc
set mouse=a
set laststatus=2
set guifont=SourceCodePro+Powerline+Awesome:h12
syntax on

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'gabrielelana/vim-markdown'
Plugin 'lervag/vimtex'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'rakr/vim-one'
Plugin 'leafgarland/typescript-vim'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'Quramy/tsuquyomi'
" Plugin 'dense-analysis/ale'
Plugin 'flazz/vim-colorschemes'
Plugin 'christoomey/vim-tmux-navigator'
" Plugin 'neoclide/coc.nvim', {'pinned': 1}

call vundle#end() 
filetype plugin indent on

" let g:markdown_enable_folding = 1
let g:markdown_enable_conceal = 1
let g:vimtex_view_method = 'skim'
let g:ycm_autoclose_preview_window_after_completion=1

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:ale_fixers = { 'javascript': ['prettier', 'eslint'], 'typescript': ['prettier', 'eslint'] }
let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['eslint'] }

colorscheme gruvbox 
