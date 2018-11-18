set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-rhubarb'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'slim-template/vim-slim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ap/vim-css-color'
Plugin 'easymotion/vim-easymotion'
Plugin 'eslint/eslint'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'morhetz/gruvbox'
Plugin 'w0rp/ale'
Plugin 'rstacruz/sparkup'
Plugin 'RRethy/vim-illuminate'

Plugin 'junegunn/fzf.vim'
Plugin 'chrisbra/csv.vim'
" Plugin 'xolox/vim-notes'

set rtp+=/usr/local/opt/fzf
let g:jsx_ext_required = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

set clipboard+=unnamed

" leader & shortcuts
let mapleader = "\<Space>"
map <D-/> <plug>NERDCommenterToggle<CR>
map <Leader>c <plug>NERDCommenterToggle<CR>
map <Leader>1 :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
nmap <Leader>o :Files<CR>
nmap <Leader>O :Ag<CR>
map <Leader>de = odebugger<Esc>
map <Leader>fo = /do<C-Enter>hi, focus: true<Esc>

" Relative & absolute line numbers
set relativenumber
set number
"set re=1
set lazyredraw

" colorscheme Dejavu
colorscheme gruvbox
set termguicolors
set background=dark

" FZF & silver searcher for searching
let $FZF_DEFAULT_COMMAND = 'ag --nocolor -g ""'

nnoremap gd <C-]>

" Macros
let @a = "xf]la\<BS>\<BS>\<CR>\<Esc>x"

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
set ignorecase
set smartcase

" Fugitive
noremap <Leader>gs :Gstatus<CR>
vnoremap do :diffget<cr>
vnoremap dp :diffput<cr>
set previewheight=30

" ctags
map <Leader>ct = :!ctags -R --exclude=.git --exclude=node_modules<CR>

" ale syntax
let g:ale_linters = { 'ruby': ['rubocop'], 'javascript': ['eslint'] }

let g:gruvbox_contrast_dark = 'hard'

let g:NERDSpaceDelims = 1

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

" http://vim.wikia.com/wiki/VimTip605
xnoremap p "_dP


autocmd FileType javascript.jsx runtime! ftplugin/html/sparkup.vim
