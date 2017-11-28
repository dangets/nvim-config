
call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
"Plug 'w0rp/ale'


""" Include user's extra bundle
"if filereadable(expand("~/.config/nvim/local_bundles.vim"))
"  source ~/.config/nvim/local_bundles.vim
"endif

call plug#end()


" FZF
nnoremap <C-p> :<C-u>FZF<CR>

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif



"" Fix backspace indent
set backspace=indent,eol,start
" pagedown with space, pageup with backspace
nnoremap <Space> <PageDown>
nnoremap <BS> <PageUp>

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=','

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase


"" Buffers and splits
set hidden
set winminheight=0
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nnoremap <Leader>+ <C-W>_
nnoremap <Leader>= <C-W>=


" in visual mode, set ctrl+c to copy to clipboard
vmap <C-C> "+y
" allow yanking/pasting between separate vim instances
set clipboard=unnamedplus


"" For JavaScript files, use `eslint` (and only eslint)
"let g:ale_linters = {
"\   'javascript': ['eslint'],
"\ }
"
"nmap <silent> [W <Plug>(ale_first)
"nmap <silent> [w <Plug>(ale_previous)
"nmap <silent> ]w <Plug>(ale_next)
"nmap <silent> ]W <Plug>(ale_last)
"
"
"let g:grepper = {}
"let g:grepper.tools = ['grep', 'git', 'rg']
"" Search for the current word
"nnoremap <Leader>* :Grepper -cword -noprompt<CR>
"
"" Search for the current selection
"nmap gs <plug>(GrepperOperator)
"xmap gs <plug>(GrepperOperator)

