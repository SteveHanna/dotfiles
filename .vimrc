set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'thoughtbot/vim-rspec'
"Plugin 'tpope/vim-dispatch'
Plugin 'digitaltoad/vim-jade'
Plugin 'slim-template/vim-slim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ap/vim-css-color'
"Plugin 'rizzatti/dash.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'eslint/eslint'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'

"Plugin 'ngmy/vim-rubocop'

"Plugin 'vim-scripts/ZoomWin'
"Plugin 'tpope/vim-flagship'
"Plugin 'skalnik/vim-vroom'
"Plugin 'embear/vim-localvimrc'

"Plugin 'digitaltoad/vim-jade'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'
"Plugin 'OmniSharp/omnisharp-vim'

Plugin 'morhetz/gruvbox'
"Plugin 'vim-scripts/mimicpak'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on


let mapleader = "\<Space>"
map <D-/> <plug>NERDCommenterToggle<CR>
map <Leader>1 :NERDTreeToggle<CR>

" Relative & absolute line numbers
set relativenumber
set number
"set re=1
set lazyredraw

" colorscheme Dejavu
colorscheme gruvbox

let g:ctrlp_map = '<Leader>o'
"nnoremap <D-O> :CtrlP<CR>
"let g:ctrlp_open_new_file = 'r'

" use silver searcher for ctrlp
let g:ctrlp_user_command = 'ag %s -l --nocolor --ignore-dir=node_modules -g  ""'

nnoremap gd <C-]>

" tabs
set tabstop=2
set shiftwidth=2
set expandtab
set guioptions-=e

" hide scrollbars
set guioptions-=L
set guioptions-=r

" remove parenthasis highlighting
let loaded_matchparen = 1

" ruby-matchit
"runtime macros/matchit.vim

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>

" Incremental searching is sexy
set incsearch

" Disable word wrapping
set wrap!

" Always show status bar
set laststatus=2
set showtabline=2

" Disable arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" tab
nnoremap <C-tab> :tabnext<CR>

" Case insensitive search
set smartcase

" Fugitive
noremap <Leader>gs :Gstatus<CR>
vnoremap do :diffget<cr>
vnoremap dp :diffput<cr>
set previewheight=30

" Zoom
nnoremap <Leader>zo :ZoomWin<CR>

" quick keys
map <Leader>de = odebugger<Esc>
" map <Leader>fo = ofocus<Esc>
map <Leader>fo = /do<C-Enter>hi, focus: true<Esc>

" ctags
map <Leader>ct = :!ctags -R --exclude=.git --exclude=node_modules<CR>

" Rubocop with Syntastic
let g:syntastic_ruby_checkers = ['rubocop', 'mri', 'reek']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_aggregate_errors = 1

let g:gruvbox_contrast_dark = 'hard'

let g:NERDSpaceDelims = 1

set foldmethod=manual

" RSpec.vim mappings
let g:rspec_runner = "os_x_iterm"
"let g:rspec_command = "Dispatch rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR> 

" rails.vim
map gv = :Eview<CR>
map gm = :Emodel<CR>
map gc = :Econtroller<CR>

" cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
