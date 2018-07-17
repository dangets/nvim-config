"" Map leader to ,
let mapleader=','

call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'Raimondi/delimitMate'
"Plug 'Yggdroot/indentLine'     " screws up json quote display - conceallevel
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'mhinz/vim-grepper'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'elixir-editors/vim-elixir'
Plug 'ElmCast/elm-vim'

Plug 'ekalinin/Dockerfile.vim'
call plug#end()


" FZF
nnoremap <C-p> :<C-u>FZF<CR>

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" delimitMate
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 2

" ale
"" For JavaScript files, use `eslint` (and only eslint)
"let g:ale_linters = {
"\   'javascript': ['eslint'],
"\ }
nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

" vim-grepper
let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
" Search for the current word
nnoremap <Leader>* :Grepper -tool rg -open -switch -cword -noprompt<cr>

"" Search for the current selection
"nmap gs <plug>(GrepperOperator)
"xmap gs <plug>(GrepperOperator)

" base16 colorscheme
if filereadable(expand("~/.vimrc_background"))
    let base16colorspace=256
    source ~/.vimrc_background
endif

" better-whitespace
autocmd BufEnter * EnableStripWhitespaceOnSave

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"

imap <c-l> * <C-R>=UltiSnips#ListSnippets()<CR>



set nowrap
set colorcolumn=80
set list            " show unprintable characters after the line
set listchars=tab:·\ ,trail:·

set mouse=a

"" Fix backspace indent
set backspace=indent,eol,start
" pagedown with space, pageup with backspace
nnoremap <Space> <PageDown>
nnoremap <BS> <PageUp>

"" Tabs. May be overriten by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" number of lines visible above/below cursor when scrolling
set scrolloff=3

"" Buffers and splits
set hidden
set winminheight=0
nmap <C-l> :bnext<CR>
nmap <C-h> :bprevious<CR>
nmap <C-j> <C-W>j<C-W>=
nmap <C-k> <C-W>k<C-W>=
nnoremap <Leader>+ <C-W>_
nnoremap <Leader>= <C-W>=

nnoremap <Leader>q :bdelete<CR>


" in visual mode, set ctrl+c to copy to clipboard
vmap <C-C> "+y
" allow yanking/pasting between separate vim instances
set clipboard=unnamedplus

" shortcut to edit a file in current buffer directory
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

autocmd FileType sql setlocal noexpandtab
