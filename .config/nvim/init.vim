map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

autocmd BufNewFile *.tex 0r ~/.vim/templates/tex.skel
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd Filetype markdown map <F5> :silent !/usr/local/bin/pandoc "%" --pdf-engine /Library/TeX/texbin/pdflatex -V geometry:margin=1in -o "%:r.pdf" && open -a Skim "%:r.pdf"<CR><bar>:redraw!<CR>
autocmd Filetype markdown map <F6> :silent !/usr/local/bin/pandoc "%" --pdf-engine /Library/TeX/texbin/pdflatex --toc -V geometry:margin=1in -o "%:r.pdf" && open -a Skim "%:r.pdf"<CR><bar>:redraw!<CR>

set number
set relativenumber
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

set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

Plug 'VundleVim/Vundle.vim'
" Plug 'Valloric/YouCompleteMe'
Plug 'gabrielelana/vim-markdown'
Plug 'lervag/vimtex'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'rakr/vim-one'
Plug 'leafgarland/typescript-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Quramy/tsuquyomi'
Plug 'dense-analysis/ale'
Plug 'flazz/vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'morhetz/gruvbox'

call plug#end() 

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
