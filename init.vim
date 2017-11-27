
call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'w0rp/ale'


""" Include user's extra bundle
"if filereadable(expand("~/.config/nvim/local_bundles.vim"))
"  source ~/.config/nvim/local_bundles.vim
"endif

call plug#end()


" FZF
nnoremap <C-p> :<C-u>FZF<CR>

" airline







"" Fix backspace indent
set backspace=indent,eol,start

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

