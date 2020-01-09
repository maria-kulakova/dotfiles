set noswapfile

set incsearch

set number

set mouse=a

set expandtab
set shiftwidth=2
set tabstop=2
set paste

set showtabline=3

set colorcolumn=81

set splitbelow
set splitright

let NERDTreeShowHidden=1
map <C-\> :NERDTreeToggle<CR>
call plug#begin('~/.vim/plugged')


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()


let mapleader=','

nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

nnoremap <c-p> :Files<CR>

nnoremap <F3> :set hlsearch!<CR>

nnoremap <c-b> :Gblame<CR>

vnoremap y "+y

"Ag
let g:ag_working_path_mode="r"

function! RemoveSwapFiles()
  let find_delete = "find . -type f -name '.*.sw*' -delete"

  echom "Executing: `" . find_delete . "`"

  echom system(find_delete)
endfunction
command! RemoveSwapFiles call RemoveSwapFiles(<f-args>)
